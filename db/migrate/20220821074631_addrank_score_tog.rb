class AddrankScoreTog < ActiveRecord::Migration[6.1]
  def change
    add_column :insect_ranks, :score, :integer
  end
end
