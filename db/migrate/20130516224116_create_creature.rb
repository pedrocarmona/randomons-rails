class CreateCreature < ActiveRecord::Migration
  def change
    create_table :creatures do |t|
      t.integer :specie_id, :null => false
      t.string :name, :null => false
      t.float :hitpoints, :null => false
      t.float :attack, :null => false
      t.float :defense, :null => false
      t.float :speed, :null => false
      t.float :growth, :null => false, :default => 0
      t.integer :level, :null => false, :default => 1
      t.float :current_hitpoints, :null => false
      t.float :current_experience, :null => false, :default => 0
      t.integer :status, :null => false, :default => 0
      t.float :preference, :null => false, :default => 0
      t.integer :user_id

      t.timestamps
    end
  end
end
