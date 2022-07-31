# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    name { Faker::Name }
    email { Faker::Internet.free_email }
    password { Faker::Internet.password(min_length: 5) }
    password_confirmation { password }
  end
end
