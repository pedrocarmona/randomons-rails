class CreateMove < ActiveRecord::Migration
  def change
    create_table :moves do |t|
      t.string :name, :null => false
      t.text :move_types, :null => false
      t.float :attack, :null => false
      t.float :accuracy, :null => false, :default => 100
      t.integer :status
      t.float :status_probability, :null => false, :default => 0
      t.text :description

      t.timestamps
    end
  end
end
