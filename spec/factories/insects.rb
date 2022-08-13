# frozen_string_literal: true

FactoryBot.define do
  factory :insect do
    name { 'アブラゼミ' }
    catch_copy { '夏の訪れを感じさせてくれる、１週間の命' }
    insect_img { Rack::Test::UploadedFile.new(Rails.root.join('spec/fixtures/images/download.png')) }
  end
end
