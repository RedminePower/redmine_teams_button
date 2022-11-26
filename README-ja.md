# redmine_teams_button

## 機能

- このプラグインインは、チケット画面で表示されるユーザー名に、Teamsボタンを追加します。
- Teamsボタンを押下すると、指定されたユーザーに対してチケット情報を付加してTeamsでチャットを起動します。
- [Redmine Time Puncher](https://www.redmine-power.com/) と一緒に使うことで、より便利になります。

![image](https://user-images.githubusercontent.com/87136359/203744934-0c5877ee-4772-4601-8236-ec397cf33b9c.png)

## 対応Redmine
- V5.x (V5.0.3にて動作確認済み)
- V4.x (V4.2.3にて動作確認済み)

## 対応クライアント
- Office365を利用していること。(Windows10で動作確認済み、Androidで動作確認済み)
  - Teamsを起動するために、DeepLink機能を使っているため。

## インストール
- Redmineのプラグインのディレクトリにて、以下を実行してください。

```
$ cd /var/lib/redmine/plugins
$ git clone https://github.com/RedminePower/redmine_teams_button.git
```

## 初期設定
- 「管理」-「設定」-「API」で「RESTによるWebサービスを有効にする」にチェックを入れてください。
- 「管理」-「プラグイン」から「Redmine Teams Button」の「設定」を押下してください。
  - システム管理者のAPIアクセスキーを指定してください。
    - Teamsを起動するために、メールアドレスを取得します。
    - メールアドレスを取得するためには、システム管理者のAPIアクセスキーが必要になります。

![image](https://user-images.githubusercontent.com/87136359/203745310-55a4f905-73fe-4aa3-92f7-6262d1f6fa32.png)

## 有効化方法

- 各プロジェクトの「設定」にて、「Teams Button」にチェックを入れてください。

![image](https://user-images.githubusercontent.com/87136359/203876971-d3fdcf06-2194-4570-9a18-27914e59efe7.png)

## アンインストール

- 配置したプラグインフォルダを削除してください。

```
$ cd /var/lib/redmine/plugins
$ rm -rf redmine_teams_button
```
