# redmine_teams_button

## 機能

このプラグインインは、チケット画面で表示されるユーザー名に、Teamsのチャットを開始するボタンを追加することができます。
Teamsのチャットボタンを押下すると、指定されたユーザーに対して、チケット情報を付加してチャットを起動します。
[Redmine Time Puncher](https://www.redmine-power.com/) との連携ができるように、「refs」キーワードも付加されます。

![image](https://user-images.githubusercontent.com/87136359/203734133-a4aa09c5-ae40-42a7-b109-84b15db5c674.png)
![image](https://user-images.githubusercontent.com/87136359/203736691-7f1f25f2-257f-420a-ba83-5c78e827e520.png)

## インストール

Redmineのプラグインのディレクトリにて、以下を実行してください。

```
$ cd /var/lib/redmine/plugins
$ git clone https://github.com/RedminePower/redmine_teams_button.git
```

## 初期設定

「管理」-「プラグイン」から「Redmine Teams Button」の「設定」を押下してください。
システム管理者のAPIアクセスキーを指定してください。
Teamsを起動するために、Redmineのユーザー情報から、メールアドレスを取得します。
メールアドレスを取得するためには、システム管理者のAPIアクセスキーが必要になります。

![image](https://user-images.githubusercontent.com/87136359/203742421-283ff406-20db-4c77-9138-4979a1cd99e0.png)
![image](https://user-images.githubusercontent.com/87136359/203740020-339dfaab-b52f-400f-aaad-dbca95c36c9b.png)

## 有効化方法

各プロジェクトの「設定」にて、「Teams Button」にチェックを入れてください。

## アンインストール

配置したプラグインフォルダを削除してください。

```
$ cd /var/lib/redmine/plugins
$ rm -rf redmine_teams_button
```
