class CreateUserItems < ActiveRecord::Migration
  def change
    create_table :user_items do |t|
      t.integer :user_id, :null => false
      t.integer :item_id, :null => false
      t.integer :quantity, :null => false, :default => 1

      t.timestamps
    end

    add_index :user_items, :user_id
  end
end
