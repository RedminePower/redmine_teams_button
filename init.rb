# 参考：http://guide.redmine.jp/Plugin_Tutorial/
# 参考：https://qiita.com/t_oginogin/items/fcefd6a8ed5b34e62d0f
# 参考：https://gihyo.jp/dev/serial/01/ruby/0038
# 参考：https://torutk.hatenablog.jp/entry/20160730/p1
# 参考：https://www.torutk.com/projects/swe/wiki/Redmine%E3%83%97%E3%83%A9%E3%82%B0%E3%82%A4%E3%83%B3%E9%96%8B%E7%99%BA

#---------------------------
# 外部モジュールを参照設定する。
#---------------------------
require 'redmine'

#---------------------------
# 起動をロギングする。
#---------------------------
Rails.logger.info 'Starting Redmine Teams Button'

#---------------------------
# フックを登録する。
#---------------------------
require_dependency 'hooks'

#---------------------------
# プラグインの登録
#---------------------------
# "Redmine::Plugin.register" というメソッドを
# ・第1引数に、":redmine_teams_reply_button" というシンボル(※1)
# ・第2引数に、"do end" で囲まれたブロック(※2)
# で実行して、プラグインを登録している。
#
# ※1:システム上でユニークである文字列のようなシステム定数。
#     重複しているとRubyとして、以降が処理されない。
#
# ※2:ブロックC#で言うところのラムダ関数のようなもの。
#
Redmine::Plugin.register :redmine_teams_button do
    name 'Redmine Teams Button'
    author 'Redmine Power'
    author_url 'https://www.en.redmine-power.com/'
    description 'Add "Teams" button to the action menu of the issue page.'
    url 'https://github.com/RedminePower/redmine_teams_button'
    version '1.0.0'

    # プラグイン設定の追加
    # Setting.plugin_polls で利用できる
    settings default: {'empty' => true}, partial: 'settings/redmine_teams_button'
  
    #---------------------------
    # プロジェクト毎に有効/無効を設定可能にする。
    #---------------------------
    project_module :teams_button do
        permission :teams_button, :teams_button => [:index]
    end
end
