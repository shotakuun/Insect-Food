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

Insect.create!(
  [
    {
      catch_copy: "夏の王様",
      cooking_store_link: "https://shibuya.parco.jp/shop/detail/?cd=025860",
      insect_img: File.open("./app/assets/images/0-01.jpg"),
      introduction: "近い食材がない...大地の味がする。",
      name: "カブトムシ",
      online_store_link: "https://takeo.tokyo/?pid=116875100",
      video_url_link: "https://www.youtube.com/watch?v=-vATsIe0jBs",
    },
  ]
)
