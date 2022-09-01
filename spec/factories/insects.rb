# frozen_string_literal: true

# == Schema Information
#
# Table name: insects
#
#  id                     :bigint           not null, primary key
#  cooking_store_link     :text(65535)
#  insect_img             :string(255)
#  insect_recipe          :string(255)
#  introduction           :string(255)
#  name                   :string(255)
#  online_store_link      :text(65535)
#  video_appearance_scene :string(255)
#  video_url_link         :text(65535)
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  insect_rank_id         :bigint           not null
#
# Indexes
#
#  index_insects_on_insect_rank_id  (insect_rank_id)
#
# Foreign Keys
#
#  fk_rails_...  (insect_rank_id => insect_ranks.id)
#
FactoryBot.define do
  factory :insect do
    name { 'アブラゼミ' }
    cooking_store_link { 'https://shibuya.parco.jp/shop/detail/?cd=025860' }
    introduction { '近い食材がない、大地の味がする。' }
    online_store_link { 'https://takeo.tokyo/?pid=116875100' }
    video_url_link { '-vATsIe0jBs' }
    video_appearance_scene { '5分25~' }
    insect_recipe { 'https://mushikui.net/?p=5407' }
    insect_img { Rack::Test::UploadedFile.new(Rails.root.join('spec/fixtures/images/download.png')) }
    association :insect_rank
  end
end
