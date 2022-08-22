class CreateInsectRanks < ActiveRecord::Migration[6.1]
  def change
    create_table :insect_ranks do |t|
      t.string :rank_comment
      t.timestamps
    end
  end
end
