Rails.logger.info 'Starting Redmine Teams Button'

require 'redmine'

Redmine::Plugin.register :redmine_teams_button do
    name 'Redmine Teams Button'
    author 'Redmine Power'
    author_url 'https://www.en.redmine-power.com/'
    description 'Add "Teams" button to the username of the issue page.'
    url 'https://github.com/RedminePower/redmine_teams_button'
    version '1.1.0'

    settings default: {'empty' => true}, partial: 'settings/redmine_teams_button'

    project_module :teams_button do
        permission :teams_button, :teams_button => [:index]
    end
end
