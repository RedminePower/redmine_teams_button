module TeamsButton
    module IssuesControllerPatch
        def initialize
            super
            @redmine_teams_button_api_access_key = Setting.plugin_redmine_teams_button['api_access_key']
        end
   end
end

IssuesController.prepend(TeamsButton::IssuesControllerPatch)
