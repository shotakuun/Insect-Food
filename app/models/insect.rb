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
class Insect < ApplicationRecord
  mount_uploader :insect_img, InsectImgUploader
  has_many :graphs, dependent: :destroy # ⅰ、ⅱ
  has_many :bookmarks, dependent: :destroy # ⅰ、ⅱ
  has_many :comments, dependent: :destroy
  belongs_to :insect_rank
end
