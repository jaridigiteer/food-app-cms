class CreateMenuPhotos < ActiveRecord::Migration[7.1]
  def change
    create_table :menu_photos do |t|
      t.string :image
      t.timestamps
    end
  end
end
