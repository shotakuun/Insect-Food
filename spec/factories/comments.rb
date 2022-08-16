# frozen_string_literal: true

FactoryBot.define do
  factory :comment do
    body { 'コメント1つ目！' }
    association :user
    association :insect
  end
end
