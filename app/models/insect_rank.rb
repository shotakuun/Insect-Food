# frozen_string_literal: true

# == Schema Information
#
# Table name: insect_ranks
#
#  id           :bigint           not null, primary key
#  rank_comment :string(255)
#  score        :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class InsectRank < ApplicationRecord
  has_many :insects
end
