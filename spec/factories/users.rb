# frozen_string_literal: true

# == Schema Information
#
# Table name: users
#
#  id                                  :bigint           not null, primary key
#  access_count_to_reset_password_page :integer          default(0)
#  avatar                              :string(255)
#  crypted_password                    :string(255)
#  email                               :string(255)      not null
#  name                                :string(255)      not null
#  reset_password_email_sent_at        :datetime
#  reset_password_token                :string(255)
#  reset_password_token_expires_at     :datetime
#  salt                                :string(255)
#  created_at                          :datetime         not null
#  updated_at                          :datetime         not null
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token)
#
FactoryBot.define do
  factory :user do
    name { Faker::Name }
    email { Faker::Internet.free_email }
    password { Faker::Internet.password(min_length: 5) }
    password_confirmation { password }
  end
end
