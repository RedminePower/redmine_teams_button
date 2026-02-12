# redmine_teams_button

ユーザー名の横に「Teams」ボタンを追加し、ワンクリックでチャットを開始できるプラグインです。

## 機能

- 「Teams」ボタンをクリックすると、そのユーザーとの Teams チャットが開く
- チャットにはチケット情報（タイトル、URL、チケット番号）が自動入力される
- [Redmine Studio](https://www.redmine-power.com/) と併用するとさらに便利

![image](https://user-images.githubusercontent.com/87136359/203757869-95b83d38-1639-442a-b87d-d012f4ed7961.png)

## 対応クライアント

- Office365 を利用していること（Windows10、Android で動作確認済み）
  - Teams を起動するために、DeepLink 機能を使用しているため

## 対応バージョン

- Redmine 5.x（5.1.11 にて動作確認済み）
- Redmine 6.x（6.1.1 にて動作確認済み）

## インストール

Redmine のインストール先はお使いの環境によって異なります。
以下の説明では `/var/lib/redmine` を使用しています。
お使いの環境に合わせて変更してください。

| 環境 | Redmine パス |
|------|-------------|
| apt (Debian/Ubuntu) | `/var/lib/redmine` |
| Docker (公式イメージ) | `/usr/src/redmine` |
| Bitnami | `/opt/bitnami/redmine` |

以下を実行し、Redmine を再起動してください。

```
$ cd /var/lib/redmine/plugins
$ git clone https://github.com/RedminePower/redmine_teams_button.git
```

## 有効化

本機能はプロジェクトごとに有効・無効を切り替えられます。
以下の設定を行わないと「Teams」ボタンは表示されません。

1. プロジェクトの「設定」を開く
2. 「プロジェクト」タブ内の「モジュール」で「Teams button」にチェックを入れて保存

![image](https://user-images.githubusercontent.com/87136359/203755775-83a29a4a-67eb-405b-9f05-d22c06592074.png)

## アンインストール

プラグインフォルダを削除し、Redmine を再起動してください。

```
$ cd /var/lib/redmine/plugins
$ rm -rf redmine_teams_button
```
