# redmine_teams_button

A plugin that adds a "Teams" button next to usernames, allowing you to start a chat with one click.

## Features

- Clicking the "Teams" button opens a Teams chat with that user
- The chat is pre-filled with issue information (title, URL, issue ID)
- More convenient when used with [Redmine Studio](https://www.redmine-power.com/)

![image](https://user-images.githubusercontent.com/87136359/203757869-95b83d38-1639-442a-b87d-d012f4ed7961.png)

## Supported Client

- Must be using Office365 (Tested on Windows10, Android)
  - Because the DeepLink function is used to launch Teams

## Supported Versions

- Redmine 5.x (Tested on 5.1.11)
- Redmine 6.x (Tested on 6.1.1)

## Installation

The Redmine installation path varies depending on your environment.
The following instructions use `/var/lib/redmine`.
Please adjust according to your environment.

| Environment | Redmine Path |
|-------------|--------------|
| apt (Debian/Ubuntu) | `/var/lib/redmine` |
| Docker (Official Image) | `/usr/src/redmine` |
| Bitnami | `/opt/bitnami/redmine` |

Run the following commands and restart Redmine.

```
$ cd /var/lib/redmine/plugins
$ git clone https://github.com/RedminePower/redmine_teams_button.git
```

## Activation

This feature can be enabled or disabled per project.
The "Teams" button will not appear unless the following settings are configured.

1. Go to project "Settings"
2. In the "Project" tab, check "Teams button" under "Modules" and save

![image](https://user-images.githubusercontent.com/87136359/203755775-83a29a4a-67eb-405b-9f05-d22c06592074.png)

## Uninstall

Remove the plugin folder and restart Redmine.

```
$ cd /var/lib/redmine/plugins
$ rm -rf redmine_teams_button
```
