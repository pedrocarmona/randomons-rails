class CreatePopulation < ActiveRecord::Migration
  def change
    create_table :populations do |t|
      t.integer :specie_id, :null => false
      t.float :latitude, :null => false
      t.float :longitude, :null => false
      t.float :radius, :null => false

      t.timestamps
    end
  end
end
