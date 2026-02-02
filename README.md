# redmine_teams_button

## Features

- This plugin adds a Teams button to the user name displayed on the ticket screen.
- When the Teams button is clicked, a chat will be launched in Teams with ticket information appended for the specified user.
- This plugin can be used together with [Redmine Studio](https://www.redmine-power.com/) for enhanced productivity.

![image](https://user-images.githubusercontent.com/87136359/203757869-95b83d38-1639-442a-b87d-d012f4ed7961.png)

## Supported Redmine

- V5.x (Tested on V5.1.11)
- V6.x (Tested on V6.1.1)

## Supported Client

- Must be using Office365 (Tested on Windows10, Android)
  - Because the DeepLink function is used to launch Teams

## Installation

Run the following commands in the Redmine plugins folder.

```bash
cd /path/to/redmine/plugins
git clone https://github.com/RedminePower/redmine_teams_button.git
```

## Activation

This feature can be enabled or disabled per project.
The "Teams" button will not appear unless the following settings are configured.

1. Go to project "Settings"
2. In the "Project" tab, check "Teams button" under "Modules" and save

![image](https://user-images.githubusercontent.com/87136359/203755775-83a29a4a-67eb-405b-9f05-d22c06592074.png)

## Uninstall

Remove the plugin folder.

```bash
cd /path/to/redmine/plugins
rm -rf redmine_teams_button
```
