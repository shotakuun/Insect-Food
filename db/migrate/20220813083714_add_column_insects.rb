class AddColumnInsects < ActiveRecord::Migration[6.1]
  def up
    add_column :insects, :video_appearance_scene, :string
  end

  def down
    remove_column :titles, :video_appearance_scene, :string
  end
end
