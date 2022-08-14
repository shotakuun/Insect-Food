# frozen_string_literal: true

# == Schema Information
#
# Table name: bookmarks
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  insect_id  :bigint
#  user_id    :bigint
#
# Indexes
#
#  index_bookmarks_on_insect_id              (insect_id)
#  index_bookmarks_on_user_id                (user_id)
#  index_bookmarks_on_user_id_and_insect_id  (user_id,insect_id) UNIQUE
#
# Foreign Keys
#
#  fk_rails_...  (insect_id => insects.id)
#  fk_rails_...  (user_id => users.id)
#
class Bookmark < ApplicationRecord
  belongs_to :user
  belongs_to :insect
  validates :user_id, uniqueness: { scope: :insect_id }
end
