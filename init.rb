#---------------------------
# 外部モジュールを参照設定する。
#---------------------------
require 'redmine'

#---------------------------
# 起動をロギングする。
#---------------------------
Rails.logger.info 'Starting Redmine Teams Button'

#---------------------------
# フック登録する。
#---------------------------
require_dependency 'hooks'

#---------------------------
# オープンクラスで拡張する
#---------------------------
require_dependency 'issues_controller_patch.rb'

#---------------------------
# プラグインの登録
#---------------------------
Redmine::Plugin.register :redmine_teams_button do
    name 'Redmine Teams Button'
    author 'Redmine Power'
    author_url 'https://www.en.redmine-power.com/'
    description 'Add "Teams" button to the username of the issue page.'
    url 'https://github.com/RedminePower/redmine_teams_button'
    version '1.0.0'

    #---------------------------
    # プラグイン設定の追加
    #---------------------------
    settings default: {'empty' => true}, partial: 'settings/redmine_teams_button'
  
    #---------------------------
    # プロジェクト毎に有効/無効を設定可能にする。
    #---------------------------
    project_module :teams_button do
        permission :teams_button, :teams_button => [:index]
    end
end
