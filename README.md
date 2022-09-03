[![Test and Deploy](https://github.com/Masaaki618/Insect-Food/actions/workflows/test_deploy.yml/badge.svg)](https://github.com/Masaaki618/Insect-Food/actions/workflows/test_deploy.yml) ![alt text](https://img.shields.io/badge/Rails-6.1.6-red) ![alt text](https://img.shields.io/badge/Ruby-3.0.3-red)

# Insect-Food 

<p align="center">
  <a href="https://gyazo.com/6f59c3aa43d423670e9830e6c60e3ed9"><img src="https://i.gyazo.com/6f59c3aa43d423670e9830e6c60e3ed9.png" alt="Image from Gyazo" width="800"/>   </a>
</p>

### **アプリURL:**

---

https://insect-food.jp/



### **サービスの概要:**

---

昆虫を食べてみたい人が診断を行い、おすすめの昆虫をレコメンドするアプリ。

[【個人開発】少しでも昆虫に興味をもって食べてみたくなるような診断サービスを作った。](https://qiita.com/masaaki_618/items/13efc16f16164e8ac89a)

### **ターゲット：**

---

- 昆虫を食べてみたいと思っているがその一歩が出ない人。
- 昆虫を食べて話題作りをしたいと思っている人。

### **仕様画面：**

---

<p align="center">

| トップ画像① | トップ画面② |
| ---- | ---- |
|  [![Image from Gyazo](https://i.gyazo.com/982e17c5aeaf87b599266b4310885cbd.png)](https://gyazo.com/982e17c5aeaf87b599266b4310885cbd) | [![Image from Gyazo](https://i.gyazo.com/352aacddaaf08b7ccb73c8834ce569b5.png)](https://gyazo.com/352aacddaaf08b7ccb73c8834ce569b5) |
| アプリの概要を記載しています。| 昆虫を食べるメリットを記載しています。|

| 一覧画面・お気に入り画面 | 虫詳細画面 |
| ---- | ---- |
|  [![Image from Gyazo](https://i.gyazo.com/7adaa6d960347a25724af3965346b3c1.png)](https://gyazo.com/7adaa6d960347a25724af3965346b3c1) |  [![Image from Gyazo](https://i.gyazo.com/c9e691f66272a5492ed94a85eb158226.png)](https://gyazo.com/c9e691f66272a5492ed94a85eb158226)  |
| 一覧、お気に入り画面から虫を探すことができます。| レーダーチャートにて虫の評価、通販サイト、食べれる店舗の紹介しています。 |
    
| 昆虫診断  | 診断結果 |
| ---- | ---- |
|  [![Image from Gyazo](https://i.gyazo.com/8fd79159f2f814968d84272e56d212ea.png)](https://gyazo.com/8fd79159f2f814968d84272e56d212ea)  |  [![Image from Gyazo](https://i.gyazo.com/f27ed6a436e721c95271f39313511582.png)](https://gyazo.com/f27ed6a436e721c95271f39313511582)  |
| 昆虫に関する診断を5問行います。| 診断結果に応じて虫が表示され、Twitterに共有できます。|
    
</p>

### **機能・特徴：**

---

- おすすめの昆虫を提供する診断機能(５問)
- ログイン·アウト
- 昆虫検索機能(ransak)
- 昆虫・お気に入りした昆虫一覧ページの実装
- 昆虫食販売店の紹介など、レーダーチャートにて総評を表示
- いいね機能
- 昆虫診断の結果をツイッターに投稿できる機能

### **画面遷移図：**

---

https://www.figma.com/file/RAZ9kzPk1hMx15SATlcLHJ/Untitled

### **ER図：**

---

[![Image from Gyazo](https://i.gyazo.com/67297c815a4406ab815a26f11226c67e.png)](https://gyazo.com/67297c815a4406ab815a26f11226c67e)

### **インフラ図：**

---

[![Image from Gyazo](https://i.gyazo.com/885705803da3921f9f855b563fd40225.png)](https://gyazo.com/885705803da3921f9f855b563fd40225)

### **使用技術：**

---

**バックエンド**

- Ruby 3.0.3
- Rails 6.1.6

**主な使用 Gem**

- rubocop
- sorcery
- asset_sync
- rails_admin
- cancancan
- sentry-ruby
- meta-tags

**テスト**

- rspec

**CI/CD**

- Github Actions

**インフラ**

- Docker
- Amazon S3
- Amazon Route53
- Amazon RDS
- Amazon EC2
- Amazon CloudFront
- AWS Certificate Manager
- Elastic Load Balancing
