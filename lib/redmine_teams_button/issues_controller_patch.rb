module RedmineTeamsButton
    module IssuesControllerPatch
        def initialize
            super
            @redmine_teams_button_api_access_key = Setting.plugin_redmine_teams_button['api_access_key']
        end
   end
end

unless IssuesController.included_modules.include?(RedmineTeamsButton::IssuesControllerPatch)
  IssuesController.send(:include, RedmineTeamsButton::IssuesControllerPatch)
end
