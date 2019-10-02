# ハンズオンで学ぶ Ruby on Rails < Action Text を支えるデータベースアソシエーション編 >

本リポジトリは、Udemy のプログラミングコース「ハンズオンで学ぶ Ruby on Rails < Action Text を支えるデータベースアソシエーション編 >」 の動画の中で実際に書いたソースコードを管理するためのものです。

ソースコードは`git clone`コマンドで取得することが可能です。

```bash
$ git clone git@github.com:DiveIntoHacking/rails-6-action-text.git
```

または

```bash
$ git clone https://github.com/DiveIntoHacking/rails-6-action-text.git
```

以下の表は、各レクチャーの名称とそのレクチャーで作成されたブランチ名との対応を示す表です。

もし、レクチャーの中でうまく動作せず行き詰まったり、あるいは、正常に動作はしたものの自分の書いたコードとの比較を行ったりするといった場合には、
各ブランチを checkout して参考にしてみてください。
全てレクチャーの収録時のソースコードと全く同じものを commit しています。

| レクチャー名                                                             | ブランチ名                          |
| ------------------------------------------------------------------------ | ----------------------------------- |
| Action Text に必要なマイグレーションを実行しよう                         | action-text-install                 |
| image_processing をインストールしよう                                    | install-image-processing            |
| 投稿(post)を scaffold しよう                                             | scaffold-post                       |
| Post と RichText を関連付けよう                                          | has-rich-text                       |
| Strong Parameters についておさらいしよう                                 | strong-parameters                   |
| view に RichText の表示領域を設定しよう                                  | text-field                          |
| pry を install してデバッグ力をあげよう                                  | install-pry                         |
| pry-rails を install して rails console でも pry っちゃおう              | pry-rails                           |
| もっと pry を使いこなそう                                                | pry-byebug                          |
| モデルの相関について見ていこう！ - posts テーブル編                      | associations                        |
| モデルの相関について見ていこう！ - action_text_rich_texts テーブル編     | N/A                                 |
| モデルの相関について見ていこう！ - active_storage_attachments テーブル編 | N/A                                 |
| モデルの相関について見ていこう！ - active_storage_blobs テーブル編       | associations                        |
| モデルの相関について見ていこう！ - 全テーブルの ER 図編                  | N/A                                 |
| バリデーションを実装しよう - 投稿のタイトル                              | validation-post-title               |
| バリデーション動作をブラウザから確認しよう                               | validation-ui                       |
| バリデーションを実装しよう - 投稿の WYSIWYG の長さ                       | validation-post-content-body        |
| バリデーションを実装しよう - 添付ファイルのサイズ                        | validation-attachment-byte-size     |
| バリデーションを実装しよう - 添付ファイルのファイル数 - 演習問題         | practice-validate-attachments-count |
| ゴミデータをぶっ壊す！                                                   | N/A                                 |

```javascript
/* N/Aの箇所では特別なブランチは存在しません。 */
```

## 注意事項

本コースでは、[Docker](https://www.docker.com/) が必須になります。Docker 環境を必ず準備してからご受講をお願い致します。

## FAQ

以下に、git や GitHub に慣れていない方から寄せられる質問をまとめています。

### このリポジトリの変更などを知る方法はありますか？

こちらのリポジトリのトップページの画面上部にある star ボタンをクリックすると、GitHub のトップページのタイムラインにそのリポジトリを追跡することができますのでやってみてください。

### 自分のアカウントにリポジトリをぶら下げたいのですが。。。

fork することで可能です。画面右上の`Fork`ボタンをクリックしてください。

### リポジトリを新規に clone を行い、該当のブランチに checkout する方法は？

`git clone`後に、例えば、`install-image-processing`というブランチを checkout したい場合を例にすると、以下のようにコマンドを実行することになります。

```bash
$ git clone https://github.com/DiveIntoHacking/rails-6-action-text.git
$ cd rails-6-action-text
$ git checkout -t origin/install-image-processing
```

尚、アプリケーションを稼働させるにはさらに以下が必要です。

```
$ docker-compose run --rm web bundle install #=> gemパッケージのインストールに時間がかかります！
$ docker-compose run --rm web yarn install
$ docker-compose run --rm web ./bin/rails db:create
$ docker-compose run --rm web ./bin/rails db:migrate
$ docker-compose up
```

### あるブランチで実装した内容を知るには？

以下の例の様に`git log -p`コマンドで commit の履歴を表示し内容を確認してください。

```bash
$ git checkout ${branch_name}
$ git log -p
```

まずレクチャーを進める前に全貌を知っておきたい！という方にはおすすめです。

### プログラムの誤りを見つけてたがその連絡の手段は？

本プログラムは Udemy 教育用のものですので、受講生からのリクエストを最優先していますので、Udemy のコースに設置されている公式の Q&A にてご指摘の内容をご報告頂ければ有り難いです。
(本プログラムはオープンソースプロジェクトではありませんので GitHub の Issues でお知らせ頂いても対応出来ない場合がありますのでご了承ください。)

その他、不明な点が有りましたら Udemy の Q&A にてご質問ください。

<div align='right'>

Dive into Hacking!

</div>
<div align='right'>

Udemy プログラミング講師

</div>
<div align='right'>

[はむ - プログラミングおじさん](https://www.udemy.com/user/76100880-5658-4a37-be77-5525d39a4726/)

</div>





