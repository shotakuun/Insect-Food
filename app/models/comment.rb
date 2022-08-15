# frozen_string_literal: true

# == Schema Information
#
# Table name: comments
#
#  id         :bigint           not null, primary key
#  body       :string(255)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  insect_id  :bigint
#  user_id    :bigint
#
# Indexes
#
#  index_comments_on_insect_id  (insect_id)
#  index_comments_on_user_id    (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (insect_id => insects.id)
#  fk_rails_...  (user_id => users.id)
#
class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :insect
  validates :body, presence: true, length: { minimum: 3, maximum: 255 }
end
