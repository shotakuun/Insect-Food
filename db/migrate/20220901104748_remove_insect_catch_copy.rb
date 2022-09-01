class RemoveInsectCatchCopy < ActiveRecord::Migration[6.1]
  def up
    remove_column :insects, :catch_copy, :string
  end

  def down
    add_column :insects, :catch_copy, :string
  end
end
