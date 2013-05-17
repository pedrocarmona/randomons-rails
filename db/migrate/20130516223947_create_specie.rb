class CreateSpecie < ActiveRecord::Migration
  def change
    create_table :species do |t|
      t.string :name, :null => false
      t.float :base_hitpoints, :null => false
      t.float :base_attack, :null => false
      t.float :base_defense, :null => false
      t.float :base_speed, :null => false
      t.text :specie_types, :null => false
      t.integer :experience_function, :null => false, :default => 0
      t.text :description

      t.timestamps
    end

    add_index :species, :name, :unique => true
  end
end
