# frozen_string_literal: true

# == Schema Information
#
# Table name: graphs
#
#  id         :bigint           not null, primary key
#  data       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  insect_id  :bigint
#
# Indexes
#
#  index_graphs_on_insect_id  (insect_id)
#
# Foreign Keys
#
#  fk_rails_...  (insect_id => insects.id)
#
class Graph < ApplicationRecord
  belongs_to :insect
end
