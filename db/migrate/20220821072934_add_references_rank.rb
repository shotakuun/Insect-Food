class AddReferencesRank < ActiveRecord::Migration[6.1]
  def change
    add_reference :insects, :insect_rank, null: false, foreign_key: true
    add_column :insects, :insect_recipe, :string
  end
end
