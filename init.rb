# frozen_string_literal: true

Rails.logger.info 'Starting Redmine Teams Button'

Redmine::Plugin.register :redmine_teams_button do
  name 'Redmine Teams Button'
  author 'Redmine Power'
  author_url 'https://www.redmine-power.com/'
  description 'Add "Teams" button to the username of the issue page.'
  url 'https://github.com/RedminePower/redmine_teams_button'
  version '1.2.0'

  project_module :teams_button do
    permission :teams_button, :teams_button => [:index]
  end
end
