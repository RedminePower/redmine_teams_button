# redmine_teams_button

## 機能

- このプラグインは、チケット画面で表示されるユーザー名に、Teamsボタンを追加します。
- Teamsボタンを押下すると、指定されたユーザーに対してチケット情報を付加してTeamsでチャットを起動します。
- [Redmine Studio](https://www.redmine-power.com/) と一緒に使うことで、より便利になります。

![image](https://user-images.githubusercontent.com/87136359/203744934-0c5877ee-4772-4601-8236-ec397cf33b9c.png)

## 対応 Redmine

- V5.x（V5.1.11 にて動作確認済み）
- V6.x（V6.1.1 にて動作確認済み）

## 対応クライアント

- Office365 を利用していること（Windows10、Android で動作確認済み）
  - Teams を起動するために、DeepLink 機能を使用しているため

## インストール

Redmine のインストール先はお使いの環境によって異なります。
以下の説明では `/var/lib/redmine` を使用しています。
お使いの環境に合わせて変更してください。

| 環境 | Redmine パス |
|------|-------------|
| apt (Debian/Ubuntu) | `/var/lib/redmine` |
| Docker (公式イメージ) | `/usr/src/redmine` |
| Bitnami | `/opt/bitnami/redmine` |

Redmine のプラグインフォルダにて、以下を実行してください。

```bash
cd /var/lib/redmine/plugins
git clone https://github.com/RedminePower/redmine_teams_button.git
```

## 有効化

本機能はプロジェクトごとに有効・無効を切り替えられます。
以下の設定を行わないと「Teams」ボタンは表示されません。

1. プロジェクトの「設定」を開く
2. 「プロジェクト」タブ内の「モジュール」で「Teams button」にチェックを入れて保存

![image](https://user-images.githubusercontent.com/87136359/203876971-d3fdcf06-2194-4570-9a18-27914e59efe7.png)

## アンインストール

プラグインのフォルダを削除してください。

```bash
cd /var/lib/redmine/plugins
rm -rf redmine_teams_button
```
