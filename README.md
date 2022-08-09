[![Test and Deploy](https://github.com/Masaaki618/Insect-Food/actions/workflows/test_deploy.yml/badge.svg)](https://github.com/Masaaki618/Insect-Food/actions/workflows/test_deploy.yml)

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

### **ターゲット：**

---

- 昆虫を食べてみたいと思っているがその一歩が出ない人。
- 昆虫を食べて話題作りをしたいと思っている人。

### **機能・特徴：**

---

- おすすめの昆虫を提供する診断機能(５問)
- ログイン·アウト(お気に入りした虫がみれる)
- 昆虫検索機能(ransak)
  どんな食べ方とか、レーダーチャートにて総評を表示
- いいね機能
- 表示された昆虫をツイッターに投稿できる機能実装

診断の流れ</br>

① 5問質問に答える。</br>
② 結果に応じておすすめの昆虫が表示される。</br>

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
