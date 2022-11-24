# redmine_teams_button

## Features

- This plugin adds a Teams button to the user name displayed on the ticket screen.
- When the Teams button is clicked, a chat will be launched in Teams with ticket information appended for the specified user.
- The "refs" keyword will also be added to allow integration with Redmine Time Puncher.

![image](https://user-images.githubusercontent.com/87136359/203757869-95b83d38-1639-442a-b87d-d012f4ed7961.png)

## Install

Place the plugin source at Redmine plugins directory.

```
$ cd /var/lib/redmine/plugins
$ git clone https://github.com/RedminePower/redmine_teams_button.git
```

## How to setting

- Go to "Administration" - "Plugins" and click "Configure" for "Redmine Teams Button".
- Specify the API access key of your system administrator.
  - Obtain an email address to activate Teams.
  - The system administrator's API access key is required to obtain an email address.

![image](https://user-images.githubusercontent.com/87136359/203755581-9e48b0f2-d399-4d16-80f2-d21f71c37f5b.png)

## How to activate

- In the "Settings" of each project, check the "Teams Button" checkbox.

![image](https://user-images.githubusercontent.com/87136359/203755775-83a29a4a-67eb-405b-9f05-d22c06592074.png)

## Uninstall

Remove the plugin directory.

```
$ cd /var/lib/redmine/plugins
$ rm -rf redmine_teams_button
```
