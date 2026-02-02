# Teams Button テスト仕様書

## 概要

Teams Button プラグインのテスト仕様。チケット画面のユーザー名に Teams ボタンを追加し、クリックで Teams チャットを起動する機能。

## 環境パラメータ

パスから自動判定:
- `redmine_5.1.11` → コンテナ名: `redmine_5.1.11`, ポート: `3051`
- `redmine_6.1.1` → コンテナ名: `redmine_6.1.1`, ポート: `3061`

## 機能の内部実装

| 項目 | 値 |
|------|-----|
| プラグインID | `:redmine_teams_button` |
| コントローラ | `TeamsButtonController` |
| エンドポイント | `GET /teams_button/user_email/:id` |
| フッククラス | `RedmineTeamsButton::Hooks` |
| プロジェクトモジュール | `:teams_button` |

---

## 1. Runner テスト

### [1-1] プラグイン登録確認

**確認方法:**
```ruby
plugin = Redmine::Plugin.find(:redmine_teams_button)
puts plugin.name
```

**期待結果:** `Redmine Teams Button` が出力される

### [1-2] ルーティング確認

**確認方法:**
```ruby
route = Rails.application.routes.recognize_path('/teams_button/user_email/1', method: :get)
puts route[:controller]
puts route[:action]
```

**期待結果:**
- controller: `teams_button`
- action: `user_email`

### [1-3] コントローラ確認

**確認方法:**
```ruby
puts defined?(TeamsButtonController)
puts TeamsButtonController.ancestors.include?(ApplicationController)
```

**期待結果:**
- `constant` が出力される
- `true` が出力される

### [1-4] フック登録確認

**確認方法:**
```ruby
hooks = Redmine::Hook.hook_listeners(:view_issues_edit_notes_bottom)
puts hooks.any? { |h| h.is_a?(RedmineTeamsButton::Hooks) }
```

**期待結果:** `true` が出力される

---

## 2. HTTP テスト

### [2-1] メールアドレス取得（正常系）

**確認方法:**
```powershell
$session = New-Object Microsoft.PowerShell.Commands.WebRequestSession
$loginResponse = Invoke-WebRequest -Uri "http://localhost:3051/login" -SessionVariable session
$token = [regex]::Match($loginResponse.Content, 'name="authenticity_token" value="([^"]+)"').Groups[1].Value
Invoke-WebRequest -Uri "http://localhost:3051/login" -Method POST -Body @{username="admin"; password="password123"; authenticity_token=$token} -WebSession $session
$response = Invoke-RestMethod -Uri "http://localhost:3051/teams_button/user_email/1" -WebSession $session
$response.email
```

**期待結果:** admin ユーザーのメールアドレスが返される

### [2-2] 存在しないユーザー

**確認方法:**
```powershell
# 上記セッションを使用
$response = Invoke-RestMethod -Uri "http://localhost:3051/teams_button/user_email/99999" -WebSession $session
$response.email -eq $null
```

**期待結果:** `True`（email が null）

### [2-3] 未ログイン状態でのアクセス

**確認方法:**
```powershell
$response = Invoke-WebRequest -Uri "http://localhost:3051/teams_button/user_email/1" -MaximumRedirection 0 -ErrorAction SilentlyContinue
$response.StatusCode
```

**期待結果:** 302（ログインページへリダイレクト）

---

## 3. ブラウザテスト

### セットアップデータ

**プロジェクト:**

| 識別子 | 名前 | Teams button モジュール |
|--------|------|------------------------|
| teams-test | Teams Button テスト | 有効 |
| teams-disabled | Teams Button 無効 | 無効 |

**グループ:**

| 名前 |
|------|
| TestGroup |

**ユーザー:**

| login | firstname | lastname | パスワード |
|-------|-----------|----------|-----------|
| testuser | Test | User | password123 |

**チケット:**

| テストID | プロジェクト | subject | 担当者 |
|----------|-------------|---------|--------|
| [3-1], [3-3] | teams-test | Teams有効テスト | testuser |
| [3-2] | teams-disabled | Teams無効テスト | testuser |
| [3-4] | teams-test | グループ担当テスト | TestGroup |

### [3-1] モジュール有効時の表示

**手順:**
1. admin でログイン
2. 「Teams有効テスト」チケットを開く

**確認:** ユーザー名の横に Teams アイコンが表示される

### [3-2] モジュール無効時の表示

**手順:**
1. admin でログイン
2. 「Teams無効テスト」チケットを開く

**確認:** Teams アイコンが表示されない

### [3-3] Teams URL の生成

**手順:**
1. admin でログイン
2. 「Teams有効テスト」チケットを開く
3. Teams アイコンをクリック

**確認:** 新しいウィンドウ/タブが開き、URL に以下が含まれる:
- `teams.microsoft.com`
- `users=` にメールアドレス
- `message=` にチケット情報

### [3-4] グループ担当者の場合

**手順:**
1. admin でログイン
2. 「グループ担当テスト」チケットを開く

**確認:** グループ名の横に Teams アイコンが表示されない
