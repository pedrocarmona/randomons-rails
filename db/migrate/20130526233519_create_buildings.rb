class CreateBuildings < ActiveRecord::Migration
  def change
    create_table :buildings do |t|
      t.string :name, :null => false
      t.float :latitude, :null => false
      t.float :longitude, :null => false
      t.string :type

      t.timestamps
    end
  end
end
