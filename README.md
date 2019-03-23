# Rails+Vue+TypeScript Skeleton

## コンセプト
- Rails 5.2.2
- Vue.js 2.6.7
- TypeScript 3.3
- No CoffeeScript
- No Sprockets
- No Webpacker
- With Webpack
- With MySQL
- With Capistrano
- With Vuex
- With Vue Router
- With Vue I18n
- With EventHub
- With Bulma *
- With Font Awesome *

`*` 印つきの項目は、アンインストール方法を後述します。

## 想定開発環境
- macOS 10.14
- RVM 1.29.7+
    - Ruby 2.6.0+
- MySQL 5.7.x
- Node.js 8.x
- Yarn 1.12.3+

ある程度差異があっても動くとは思います。なお Docker 環境は準備中です。

## つかいかた

スケルトン自体も随時更新していくつもりですので、このリポジトリから fork して作ることをおすすめします。

### 初期設定
- 上記「動作環境」のソフトウェアをあらかじめインストールしておきます。
- `rails-vue-ts-skeleton` および `RailsVueTsSkeleton` という文字列を全文検索し、あなたのアプリケーション名に置換します。
- `config/database.yml` を編集してデータベースの設定を行います。
- 必要があれば `config/storage.yml` `config/cable.yml` を編集して Active Storage と Action Cable の設定を行います。
- `EDITOR=emacs rails credentials:edit` を実行して、 `master.key` と `credentials.yml.enc` を生成し、保存します。
- 最後に、パッケージのインストールとデータベースのセットアップのため、ターミナルを開いて、このリポジトリのディレクトリへ移動し、下記のコマンドを実行します。

```
$ bundle
$ yarn
$ rake db:setup
```

### 起動
2つターミナルを開き、いずれもこのリポジトリのディレクトリまで移動します。1つめのターミナルで下記のコマンドを実行します。

```
$ rails s
```

2つめのターミナルで、下記のコマンドを実行します。

```
$ yarn webpack-dev-server
```

2つのターミナルを開いた状態で、`http://localhost:3000` へアクセスします。

### デプロイ
デプロイ設定は [別ファイル](/doc/DEPLOY.md) に分けましたが、デプロイ先の環境や方針に大きく左右されますので、あくまでも参考としてご覧ください。

## カスタマイズ

### MySQL + InnoDB + utf8mb4 対応のためのスクリプトの削除
本スケルトンには、MySQL + InnoDB 環境下で utf8mb4 に対応するためのスクリプトが含まれていますが、もし MySQL + InnoDB 以外の環境を使う場合には邪魔なので、 `config/initializers/ar_innodb_row_format.rb` を削除します。

### Bulma の削除
- Yarn で Bulma を削除します。

```
$ yarn remove bulma
```

- `frontend/styles/main/vendor/_index.sass` を開き、下記の行を削除します。

```
@import '~bulma/css/bulma.css'
```

### Font Awesome の削除
- Yarn で Font Awesome を削除します。

```
$ yarn remove @fortawesome/fontawesome-svg-core @fortawesome/free-solid-svg-icons @fortawesome/vue-fontawesome
```

- ` frontend/scripts/config/icons.ts` を削除します。
- `frontend/scripts/entries/app.ts` を開き、下記の行を削除します。

```
import 'scripts/config/icons'
```

## ToDo
- [ ] production 環境での最適化
- [ ] Docker 化
