class AddExtraFieldsAndIndexes < ActiveRecord::Migration
  def change
    add_column :items, :description, :text
    add_column :users, :about, :text
    add_column :populations, :hidden, :boolean, :default => false

    add_index :creatures, :user_id
    add_index :populations, :specie_id
  end
end
