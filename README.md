README.md
# Fail-shere

## サービス概要
「Fail Share」は、プログラミング学習中における失敗の投稿を通し、失敗に慣れ、挫折しにくいマインドを形成するサービスです。

## 想定されるユーザー層
・プログラミング学習者

## サービスコンセプト
### ユーザーが抱えている課題感と解決方法
プログラミング学習は難しいことも多く、学習初期段階ではとくに、「自分はエンジニアに向いていないのではないか？」などと挫折感を味わったり、焦燥感を持つことが想定されます。
「Fail Share」は、失敗投稿機能を通じ、学習段階で失敗を経験するのは当然のことだということをユーザーに気づかせ、学習中のモチベーションを維持させます。
また、他人の失敗投稿を見ることで、孤独感を和らげ、ユーザーを元気づける手助けをします。
さらに、月ごとの失敗一覧機能をつけて可視化することで、自分の成長を実感することができます。

### なぜそのサービスを作ろうと思ったのか
私はプログラミング学習を進める中で、たくさんのエラーを経験し、その度に落ち込んでいました。
そんな時、現役のエンジニアから「自分もいまだに失敗するよ」との一言を聞き、
「失敗は誰にでもあり、自分だけが失敗しているわけではない」ということに気づき、安心することができました。
そこで、自信を失いがちな「失敗」に着目したサービスを作れたら、
「失敗ばかりの自分は、エンジニアに向いていないのではないか？」といった、同じ悩みを持つ方にも元気を出していただけるのではないかと考え、「Fail Share」を企画しました。

### サービスの利用イメージ
ユーザーは登録後、自身の遭遇したプログラミングエラーや失敗談を投稿・記録することができます。
また、将来的に同じエラーに遭遇したときに、過去の自分の投稿を見返すことで、経験を活かして対処できるようになります。
また、月ごとの失敗一覧機能により、自己の成長を振り返り、学習の進捗を追跡できます。

### ユーザーの獲得について
SNSでの共有機能経由の拡散、関連するLT会をRUNTEQ内で企画するなどして、ユーザーを獲得する戦略を立てています。

### どこが売りになるか、差別化ポイントになるか
他の学習支援サービスとの最大の差別化ポイントは、失敗を投稿し、掲示板として見られるようにすることで、学習者の孤独感、挫折感を減らすことができる点です。
さらに、過去の失敗を振り返ることにより、自己の成長を実感し、プログラミング学習のモチベーションを保つことができます。

## 実装を予定している機能
### MVP (Minimum Viable Product)
- **ユーザー登録機能**
  - X,GitHub,Googleアカウントによるユーザー登録
- **ログイン機能**
  - X,GitHub,Googleアカウントによるログイン
- **パスワード再設定機能**
- **ゲストユーザー機能**
  - 投稿の閲覧のみ利用可能
- **失敗投稿機能**
  - 50文字以内のタイトル
  - 100文字以内の文章
  - 最大6個のタグ
  - 公開・非公開を選択
  - 匿名も選択できる
  - マークダウン記法に対応
  - 失敗を投稿したら、励ましメッセージとともに可愛い画像を表示
- **画像投稿・編集機能**
- **テンプレート・タグ付け機能**
  - テンプレートを選択することでタグが自動入力
  - タグは編集可能
- **コメント機能**
  - 非同期通信を行うためにAjax化
- **いいね機能**
  - 非同期通信を行うためにAjax化
- **ランキング機能**
  - いいね数の多い失敗をランキング表示
- **マルチ検索・オートコンプリート機能**
  - タグ、失敗内容から複合的に検索することができる
- **X共有機能**
- **テスト機能(Rspec)**

### その後の機能
- **ユーザープロフィール機能**
  - ユーザー情報の表示と編集
- **月ごとの失敗一覧機能**
  - ユーザーの投稿データにタイムスタンプを用いてデータベースから検索し、表示
- **レベルアップ機能**
- 失敗投稿数に応じてレベルアップ、レベルを表示
- **管理ユーザー(Admin)機能**
- **GoogleCloudVisionAPIによる不適切な画像のバリデーション**
- **PWA機能**
- **LINE通知機能**
  - 「Fail Share」の公式アカウントをLINEで友だち追加すると、新しい投稿が通知されます。


開発環境はDockerを利用して構築し、AWSでのデプロイを予定しています。
初期のMVPはRailsを使用してシンプルに構築し、基本的なCRUD機能を備えた形でリリース。
ユーザーからのフィードバックを元に機能を拡充していきます。
