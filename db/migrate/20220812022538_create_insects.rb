class CreateInsects < ActiveRecord::Migration[6.1]
  def change
    create_table :insects do |t|
      t.string :name
      t.string :catch_copy
      t.string :introduction
      t.string :insect_img
      t.text :cooking_store_link
      t.text :online_store_link
      t.text :video_url_link
      t.timestamps
    end
  end
end
