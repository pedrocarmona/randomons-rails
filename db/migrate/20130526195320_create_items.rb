class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :specie_id
      t.string :name, :null => false
      t.integer :price, :null => false, :default => 0

      t.timestamps
    end

    add_index :items, :specie_id
  end
end
