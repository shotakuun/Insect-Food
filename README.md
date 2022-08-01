[![Test and Deploy](https://github.com/Masaaki618/Insect-Food/actions/workflows/test_deploy.yml/badge.svg)](https://github.com/Masaaki618/Insect-Food/actions/workflows/test_deploy.yml)

# Insect-Food

https://insect-food.jp/

### **サービスの概要:**

---

本サービスは昆虫食を初めて食べる人に向けたサービスです。</br>
昆虫と言っても小さな虫から大きめの虫まで大小様々で</br>
見た目による食べれる食べれないがハッキリと出るのが昆虫食だと思っています。</br>
ユーザーに 5 問質問を答えてもらい結果に応じておすすめの虫と</br>
昆虫食初級者か上級者なのかを教えてくれるアプリになります。

### **背景：**

---

買い物中に虫の乾燥していたお菓子が売っていて、軽い話題作りにもいいなと思い気になって買いました。</br>
めちゃめちゃ美味しくてそこからいろんな虫を食べて見ることにしました。</br>
初めて食べたものが乾燥したバッタでした。</br>
食べたことない人に味の感想を言うと、気持ち悪いとか、絶対食べたくないとかマイナスのイメージが多くてびっくりしたので</br>
虫への不快感を払拭し虫をたくさんの人に食べてほしいと思いこのようなサービスを開発したいと思いました。

### **ターゲット：**

---

- 虫を食べてみたいと思っているがその一歩が出ない人
- 虫を食べて話題作りをしたいと思っている人

### **機能・特徴：**

---

- ユーザーを適正ランクにを判定する診断機能(５問ほど)
- ログイン·アウト(お気に入りした虫がみれる)
- 虫検索機能(ransak)
- 会員登録の実装
- いいね機能
- 表示された虫をツイッターに投稿できる機能実装

診断の流れ</br>

① いくつかを答える。</br>
② 結果に応じて適正ランクのが表示される。</br>

例）</br>
昆虫食の上級者です！</br>
いろいろな虫にチャレンジしてみましょう！</br>

おすすめの虫</br>

- G
- カブトムシ
- カマキリ

上記の虫の詳細ページへ遷移し詳しい調理方法へのリンクを追記 youtube の試食動画を閲覧できるように実装

### **画面遷移図：**

---

https://www.figma.com/file/RAZ9kzPk1hMx15SATlcLHJ/Untitled

### **ER 図：（仮）**

---

[![Image from Gyazo](https://i.gyazo.com/b74ab693a798edc33c956f2abc5a7028.png)](https://gyazo.com/b74ab693a798edc33c956f2abc5a7028)

### **インフラ図：**

---

[![Image from Gyazo](https://i.gyazo.com/2f755d75b59356eae0fe5e55b94c7067.png)](https://gyazo.com/2f755d75b59356eae0fe5e55b94c7067)

### **使用技術：**

---

**バックエンド**

- Ruby 3.0.3
- Rails 6.1.6

**主な使用 gem**

- rubocop
- slim-rails

**テスト**

- rspec

**ci/cd**

- github actions

**インフラ**

- docker
- Amazon S3
- Amazon Route53
- Amazon RDS
- Amazon EC2
- Amazon CloudFront
- AWS Certificate Manager
- Elastic Load Balancing
