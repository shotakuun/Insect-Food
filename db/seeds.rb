# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(
  [
    {
      email: "test@com",
      name: "admin",
      password: "aaaaaaaa",
      password_confirmation: "aaaaaaaa",
      role: 1,
    },
  ]
)

InsectRank.create!(
  [
    {
      rank_comment: "大丈夫です...最初はみんな怖いです",
      score: 1,
    },
    {
      rank_comment: "初心者レベルは卒業しています！まだまだ高みを目指しましょう！",
      score: 2,
    },
    {
      rank_comment: "中級者レベルに到達しています！自称昆虫食大好き人間って名乗りましょう！",
      score: 3,
    },
    {
      rank_comment: "最高ランクまで後一つです！ここまで来れば怖いものはありません!",
      score: 4,
    },
    {
      rank_comment: "最高ランクです！昆虫食を周りの人に広めていきましょう！",
      score: 5,
    },
  ]
)

# ランク5
Insect.create!(
  [
    {
      cooking_store_link: "https://shibuya.parco.jp/shop/detail/?cd=025860",
      insect_img: File.open("./app/assets/images/kabutomusi.png"),
      introduction: "近い食材がない、大地の味がする。",
      name: "カブトムシ",
      online_store_link: "https://takeo.tokyo/?pid=116875100",
      video_url_link: "-vATsIe0jBs",
      insect_recipe: nil,
      video_appearance_scene: "5分25~",
      insect_rank: InsectRank.find(5),
    },
    {
      cooking_store_link: "https://shanghai-xiaochi.com/menu/insects/",
      insect_img: File.open("./app/assets/images/mukade.png"),
      introduction: "苦味が強い感じ、漢方薬とかに使われている",
      name: "ムカデ",
      online_store_link: "https://bit.ly/3TvmPvv",
      video_url_link: "IgkrGJlrt6M",
      insect_recipe: "https://mushikui.net/?p=5407",
      video_appearance_scene: "0分00~",
      insect_rank: InsectRank.find(5),
    },
    {
      cooking_store_link: "https://shanghai-xiaochi.com/menu/insects/",
      insect_img: File.open("./app/assets/images/taranntyura.png"),
      introduction: "普通にカニとかエビを食べている感じすごい濃厚",
      name: "タランチュラ",
      online_store_link: "https://bit.ly/3cy8UEa",
      video_url_link: "SG9scHgMrH4",
      insect_recipe: nil,
      video_appearance_scene: "0分00~",
      insect_rank: InsectRank.find(5),
    },
    {
      cooking_store_link: "https://shanghai-xiaochi.com/menu/insects/",
      insect_img: File.open("./app/assets/images/sasori.png"),
      introduction: "管理人が一番美味しいと感じた虫、鶏肉を感じた",
      name: "さそり",
      online_store_link: "https://bit.ly/3Rc1IwQ",
      insect_recipe: nil,
      video_url_link: "7vvHqa-L81U",
      video_appearance_scene: "0分00~",
      insect_rank: InsectRank.find(5),
    },
    {
      cooking_store_link: "https://bit.ly/2KWq9wt",
      insect_img: File.open("./app/assets/images/daiouoogusokumusi.png"),
      introduction: "海の掃除屋、やっぱりシャコに味は近い",
      name: "オオグソクムシ",
      online_store_link: nil,
      insect_recipe: "https://bit.ly/3AEKdxS",
      video_url_link: "qGgFQrEW3Z0",
      video_appearance_scene: "0分00~",
      insect_rank: InsectRank.find(5),
    },
  ]
)

list1 = [
  { data: 1, insect: Insect.find(1) },
  { data: 1, insect: Insect.find(1) },
  { data: 1, insect: Insect.find(1) },
  { data: 1, insect: Insect.find(1) },
  { data: 5, insect: Insect.find(1) },
]

list2 = [
  { data: 1, insect: Insect.find(2) },
  { data: 5, insect: Insect.find(2) },
  { data: 5, insect: Insect.find(2) },
  { data: 1, insect: Insect.find(2) },
  { data: 5, insect: Insect.find(2) },
]

list3 = [
  { data: 4, insect: Insect.find(3) },
  { data: 1, insect: Insect.find(3) },
  { data: 1, insect: Insect.find(3) },
  { data: 3, insect: Insect.find(3) },
  { data: 5, insect: Insect.find(3) },
]

list4 = [
  { data: 5, insect: Insect.find(4) },
  { data: 1, insect: Insect.find(4) },
  { data: 1, insect: Insect.find(4) },
  { data: 4, insect: Insect.find(4) },
  { data: 5, insect: Insect.find(4) },
]

list5 = [
  { data: 3, insect: Insect.find(5) },
  { data: 1, insect: Insect.find(5) },
  { data: 1, insect: Insect.find(5) },
  { data: 4, insect: Insect.find(5) },
  { data: 5, insect: Insect.find(5) },
]

Graph.create!(list1)
Graph.create!(list2)
Graph.create!(list3)
Graph.create!(list4)
Graph.create!(list5)
# ランク5

# ランク4

Insect.create!(
  [
    {
      cooking_store_link: nil,
      insect_img: File.open("./app/assets/images/taiwanookoorogi.png"),
      introduction: "ビジュアル凄すぎて味が入ってこない笑",
      name: "タイワンオオコオロギ",
      online_store_link: "https://bit.ly/3pWp5hV",
      video_url_link: "WKZOb2JFJXw",
      insect_recipe: nil,
      video_appearance_scene: "9分32~",
      insect_rank: InsectRank.find(4),
    },
    {
      cooking_store_link: "https://bit.ly/3B1O35H",
      insect_img: File.open("./app/assets/images/semi.png"),
      introduction: "エビの頭をバリバリ食べてる感じ、好き嫌いが分かれると思った",
      name: "セミ",
      online_store_link: nil,
      video_url_link: "h3a4PIFs5zw",
      insect_recipe: "https://bit.ly/3TtQqWa",
      video_appearance_scene: "0分00~",
      insect_rank: InsectRank.find(4),
    },
    {
      cooking_store_link: nil,
      insect_img: File.open("./app/assets/images/oosuzumebati.png"),
      introduction: "エビっぽい感じ、セミより美味しかった。",
      name: "オオスズメバチ",
      online_store_link: "https://bit.ly/3Rke5X4",
      video_url_link: "tHgOwrysZwA",
      insect_recipe: "https://bit.ly/3KC2uQV",
      video_appearance_scene: "0分00~",
      insect_rank: InsectRank.find(4),
    },
    {
      cooking_store_link: nil,
      insect_img: File.open("./app/assets/images/tagame.png"),
      introduction: "見た目と裏腹にフルーティーな味わいがする",
      name: "タガメ",
      online_store_link: "https://bit.ly/3AwBMom",
      video_url_link: "6wiBs0ezTTo",
      insect_recipe: nil,
      video_appearance_scene: "0分00~",
      insect_rank: InsectRank.find(4),
    },
  ]

)

list6 = [
  { data: 2, insect: Insect.find(6) },
  { data: 2, insect: Insect.find(6) },
  { data: 2, insect: Insect.find(6) },
  { data: 2, insect: Insect.find(6) },
  { data: 5, insect: Insect.find(6) },
]

list7 = [
  { data: 4, insect: Insect.find(7) },
  { data: 1, insect: Insect.find(7) },
  { data: 2, insect: Insect.find(7) },
  { data: 4, insect: Insect.find(7) },
  { data: 5, insect: Insect.find(7) },
]

list8 = [
  { data: 5, insect: Insect.find(8) },
  { data: 1, insect: Insect.find(8) },
  { data: 2, insect: Insect.find(8) },
  { data: 3, insect: Insect.find(8) },
  { data: 3, insect: Insect.find(8) },
]

list9 = [
  { data: 4, insect: Insect.find(9) },
  { data: 1, insect: Insect.find(9) },
  { data: 2, insect: Insect.find(9) },
  { data: 5, insect: Insect.find(9) },
  { data: 5, insect: Insect.find(9) },
]

Graph.create!(list6)
Graph.create!(list7)
Graph.create!(list8)
Graph.create!(list9)

# ランク4

# ランク3
Insect.create!(
  [
    {
      cooking_store_link: "https://bit.ly/3pWxulp",
      insect_img: File.open("./app/assets/images/gengorou.png"),
      introduction: "川海老食べてる感じに近い、食感は硬め",
      name: "ゲンゴロウ",
      online_store_link: "https://bit.ly/3CL0Nig",
      video_url_link: "Y-0ElKahs2k",
      insect_recipe: nil,
      video_appearance_scene: "3分10~",
      insect_rank: InsectRank.find(3),
    },
    {
      cooking_store_link: nil,
      insect_img: File.open("./app/assets/images/hatinoko.png"),
      introduction: "ちょっとクセのある白子？？ 慣れれば美味しいかも",
      name: "大スズメバチの幼虫",
      online_store_link: "https://bit.ly/3eboyGa",
      video_url_link: "sj60p2QeW8s",
      insect_recipe: nil,
      video_appearance_scene: "0分00",
      insect_rank: InsectRank.find(3),
    },
    {
      cooking_store_link: "https://bit.ly/3Q4F1ct",
      insect_img: File.open("./app/assets/images/seminoyoutyuu.png"),
      introduction: "めちゃめちゃ濃厚なナッツを食べてる感じ",
      name: "セミの幼虫",
      online_store_link: "https://bit.ly/3R97AqC",
      video_url_link: "DpAzSkoHubU",
      insect_recipe: "https://bit.ly/3cxCfi4",
      video_appearance_scene: "13分10",
      insect_rank: InsectRank.find(3),
    },
    {
      cooking_store_link: nil,
      insect_img: File.open("./app/assets/images/kamemusi.png"),
      introduction: "パクチー好きは食感を気にしなければいける",
      name: "カメムシ",
      online_store_link: "https://bit.ly/3RqpxRa",
      video_url_link: "8-p8-dXiPkg",
      insect_recipe: nil,
      video_appearance_scene: "0分00",
      insect_rank: InsectRank.find(3),
    },
  ]

)

list10 = [
  { data: 3, insect: Insect.find(10) },
  { data: 1, insect: Insect.find(10) },
  { data: 1, insect: Insect.find(10) },
  { data: 4, insect: Insect.find(10) },
  { data: 3, insect: Insect.find(10) },
]

list11 = [
  { data: 3, insect: Insect.find(11) },
  { data: 2, insect: Insect.find(11) },
  { data: 1, insect: Insect.find(11) },
  { data: 1, insect: Insect.find(11) },
  { data: 4, insect: Insect.find(11) },
]

list12 = [
  { data: 5, insect: Insect.find(12) },
  { data: 2, insect: Insect.find(12) },
  { data: 1, insect: Insect.find(12) },
  { data: 5, insect: Insect.find(12) },
  { data: 2, insect: Insect.find(12) },
]

list13 = [
  { data: 3, insect: Insect.find(13) },
  { data: 3, insect: Insect.find(13) },
  { data: 3, insect: Insect.find(13) },
  { data: 5, insect: Insect.find(13) },
  { data: 5, insect: Insect.find(13) },
]

Graph.create!(list10)
Graph.create!(list11)
Graph.create!(list12)
Graph.create!(list13)
# ランク3

# ランク2

Insect.create!(
  [
    {
      cooking_store_link: nil,
      insect_img: File.open("./app/assets/images/koganemusi.png"),
      introduction: "豆を食べている感じ、枝豆に似ている 臭い個体もいるみたい",
      name: "カナブン",
      online_store_link: "https://bit.ly/3pZODuA",
      video_url_link: "EPAFqka8qhY",
      insect_recipe: "https://bit.ly/3AziGxP",
      video_appearance_scene: "0分00",
      insect_rank: InsectRank.find(2),
    },
    {
      cooking_store_link: "https://bit.ly/3wKCldc",
      insect_img: File.open("./app/assets/images/batta.png"),
      introduction: "目隠しして食べたら川海老と変わらない",
      name: "バッタ",
      online_store_link: "https://bit.ly/3Q0Jlt7",
      video_url_link: "c-Aj_7YFky4",
      insect_recipe: "https://bit.ly/3Q51FBe",
      video_appearance_scene: "0分00",
      insect_rank: InsectRank.find(2),
    },
    {
      cooking_store_link: nil,
      insect_img: File.open("./app/assets/images/okera.png"),
      introduction: "煮干しと同じ、絶対いいだしが取れる",
      name: "オケラ",
      online_store_link: "https://bit.ly/3R3sE1n",
      video_url_link: "4lkbMiWoW0k",
      insect_recipe: nil,
      video_appearance_scene: "6分40~",
      insect_rank: InsectRank.find(2),
    },
  ]
)

list14 = [
  { data: 3, insect: Insect.find(14) },
  { data: 3, insect: Insect.find(14) },
  { data: 4, insect: Insect.find(14) },
  { data: 5, insect: Insect.find(14) },
  { data: 4, insect: Insect.find(14) },
]

list15 = [
  { data: 5, insect: Insect.find(15) },
  { data: 1, insect: Insect.find(15) },
  { data: 1, insect: Insect.find(15) },
  { data: 3, insect: Insect.find(15) },
  { data: 2, insect: Insect.find(15) },
]

list16 = [
  { data: 3, insect: Insect.find(16) },
  { data: 1, insect: Insect.find(16) },
  { data: 1, insect: Insect.find(16) },
  { data: 3, insect: Insect.find(16) },
  { data: 1, insect: Insect.find(16) },
]

Graph.create!(list14)
Graph.create!(list15)
Graph.create!(list16)

# ランク2

# ランク1

Insect.create!(
  [
    {
      cooking_store_link: nil,
      insect_img: File.open("./app/assets/images/kaiko.png"),
      introduction: "グニュグニュしたピーナッツを食べた感じ",
      name: "カイコ",
      online_store_link: "https://bit.ly/3wIdbvy",
      video_url_link: "kf8U57hJ5Ag",
      insect_recipe: nil,
      video_appearance_scene: "0分00",
      insect_rank: InsectRank.find(1),
    },
    {
      cooking_store_link: nil,
      insect_img: File.open("./app/assets/images/zazamusi.png"),
      introduction: "こちらも特徴的な味、慣れるまで我慢",
      name: "ザザムシ",
      online_store_link: "https://bit.ly/3Kybsie",
      video_url_link: "f-jmmqmNXhY",
      insect_recipe: nil,
      video_appearance_scene: "0分00",
      insect_rank: InsectRank.find(1),
    },
    {
      cooking_store_link: nil,
      insect_img: File.open("./app/assets/images/su-pa-wa-mu.png"),
      introduction: "ナッツのようなコクを感じることができる。普通に食べれる。",
      name: "スーパーワーム",
      online_store_link: "https://bit.ly/3TykqjN",
      video_url_link: "GiglXzO9Ksg",
      insect_recipe: nil,
      video_appearance_scene: "0分00",
      insect_rank: InsectRank.find(1),
    },
    {
      cooking_store_link: nil,
      insect_img: File.open("./app/assets/images/sagowa-mu.png"),
      introduction: "濃厚の一言、トロやエビの味がする",
      name: "サゴワーム",
      online_store_link: "https://bit.ly/3R90TVw",
      video_url_link: "iAd-f6je75g",
      insect_recipe: nil,
      video_appearance_scene: "0分00",
      insect_rank: InsectRank.find(1),
    },
    {
      cooking_store_link: nil,
      insect_img: File.open("./app/assets/images/kuroari.png"),
      introduction: "酸っぱい個体とかもいる、何かと一緒に食べるのが良い",
      name: "クロアリ",
      online_store_link: "https://bit.ly/3e48mWZ",
      video_url_link: "6lY8waaZxQo",
      insect_recipe: nil,
      video_appearance_scene: "0分00",
      insect_rank: InsectRank.find(1),
    },
    {
      cooking_store_link: 'https://bit.ly/3pUTCN3',
      insect_img: File.open("./app/assets/images/koorogi.png"),
      introduction: "味はエビ、本物の海老より入手難易度が低い",
      name: "コオロギ",
      online_store_link: "https://muji.lu/3wMgJgC",
      video_url_link: "BwZZwTPhoHk",
      insect_recipe: 'https://bit.ly/3Rc0eCM',
      video_appearance_scene: "0分00",
      insect_rank: InsectRank.find(1),
    },
  ]
)

list17 = [
  { data: 2, insect: Insect.find(17) },
  { data: 1, insect: Insect.find(17) },
  { data: 1, insect: Insect.find(17) },
  { data: 2, insect: Insect.find(17) },
  { data: 4, insect: Insect.find(17) },
]

list18 = [
  { data: 2, insect: Insect.find(18) },
  { data: 1, insect: Insect.find(18) },
  { data: 1, insect: Insect.find(18) },
  { data: 2, insect: Insect.find(18) },
  { data: 4, insect: Insect.find(18) },
]

list19 = [
  { data: 3, insect: Insect.find(19) },
  { data: 2, insect: Insect.find(19) },
  { data: 1, insect: Insect.find(19) },
  { data: 3, insect: Insect.find(19) },
  { data: 3, insect: Insect.find(19) },
]

list20 = [
  { data: 2, insect: Insect.find(20) },
  { data: 2, insect: Insect.find(20) },
  { data: 2, insect: Insect.find(20) },
  { data: 2, insect: Insect.find(20) },
  { data: 5, insect: Insect.find(20) },
]

list21 = [
  { data: 2, insect: Insect.find(21) },
  { data: 2, insect: Insect.find(21) },
  { data: 2, insect: Insect.find(21) },
  { data: 3, insect: Insect.find(21) },
  { data: 1, insect: Insect.find(21) },
]

list22 = [
  { data: 5, insect: Insect.find(22) },
  { data: 1, insect: Insect.find(22) },
  { data: 1, insect: Insect.find(22) },
  { data: 5, insect: Insect.find(22) },
  { data: 1, insect: Insect.find(22) },
]

Graph.create!(list17)
Graph.create!(list18)
Graph.create!(list19)
Graph.create!(list20)
Graph.create!(list21)
Graph.create!(list22)
# ランク1
