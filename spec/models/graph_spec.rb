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
require 'rails_helper'

RSpec.describe Graph, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
