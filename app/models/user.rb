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
#  role                                :integer          default("general"), not null
#  salt                                :string(255)
#  created_at                          :datetime         not null
#  updated_at                          :datetime         not null
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token)
#
class User < ApplicationRecord
  authenticates_with_sorcery!
  validates :password, length: { minimum: 5 }, presence: true, if: -> { new_record? || changes[:crypted_password] }
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }
  validates :reset_password_token, uniqueness: true, allow_nil: true
  validates :email, uniqueness: true, presence: true, length: { maximum: 255 }
  validates :name, uniqueness: true, presence: true, length: { minimum: 3, maximum: 255 }
  mount_uploader :avatar, AvatarUploader

  enum role: { general: 0, admin: 1 }

  has_many :bookmarks, dependent: :destroy
  has_many :bookmarks_insect, through: :bookmarks, source: :insect

  has_many :comments, dependent: :destroy

  def bookmark(insect)
    bookmarks_insect << insect
  end

  def unbookmark(insect)
    bookmarks_insect.delete(insect)
  end

  def bookmark?(insect)
    bookmarks_insect.include?(insect)
  end

  def mine?(comment)
    id == comment.user_id
  end
end
