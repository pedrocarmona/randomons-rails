class CreateSpecieMoves < ActiveRecord::Migration
  def change
    create_table :specie_moves do |t|
      t.integer :specie_id, :null => false
      t.integer :move_id, :null => false
      t.integer :level, :null => false, :default => 1

      t.timestamps
    end

    add_index :specie_moves, :specie_id
    add_index :specie_moves, :move_id
  end
end
