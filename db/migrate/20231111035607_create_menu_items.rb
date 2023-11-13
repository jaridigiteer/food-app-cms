class CreateMenuItems < ActiveRecord::Migration[7.1]
  def change
    create_table :menu_items do |t|
      t.string :name
      t.text :description
      t.integer :quantity
      t.string :status
      t.decimal :price

      t.boolean :active_status
      


      t.timestamps
    end
  end
end
