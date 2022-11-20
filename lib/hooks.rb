# ビューをフックするためには、「Redmine::Hook::ViewListener」クラスを継承する。
class Hooks < Redmine::Hook::ViewListener

    # CSSを差し込む。
    # CSSを読み込ませるのは、特定のフックポイントでなければできない模様。
    def view_layouts_base_html_head(context = { })
        stylesheet_link_tag('teams_reply.css', :plugin => 'redmine_teams_reply_button')
    end

    # Teams返信ボタンを表示する。
    def view_issues_edit_notes_bottom(context={ })
        # プロジェクトで指定されるモジュールが無効の場合は、以降の処理は行わない。
        return false unless context[:issue].project.module_enabled?(:redmine_teams_button)
        
        context[:controller].send(:render_to_string, {
            # partialは、「部分テンプレート」と呼ばれ、以下のルールで配置する。
            # ・配置先：「view_issues_edit_notes_bottom」の場合、app/view/issues
            # ・ファイル名：指定した名前の先頭に_を付け拡張子を.erb（.html.erbなどでも可）
            :partial => "issues/teams_reply",
            :locals => context
        })
    end
end
