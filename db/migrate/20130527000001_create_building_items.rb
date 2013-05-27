class CreateBuildingItems < ActiveRecord::Migration
  def change
    create_table :building_items do |t|
      t.integer :building_id, :null => false
      t.integer :item_id, :null => false
      t.integer :price, :null => false, :default => 0

      t.timestamps
    end

    remove_column :items, :price

    add_index :building_items, :building_id
    add_index :building_items, :item_id
  end
end
