class CreateGraphs < ActiveRecord::Migration[6.1]
  def change
    create_table :graphs do |t|
      t.integer :data
      t.references :insect, foreign_key: true

      t.timestamps
    end
  end
end
