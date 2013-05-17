class Specie < ActiveRecord::Base
  attr_accessible :name, :base_hitpoints, :base_attack, :base_defense, :base_speed,
    :specie_types, :experience_function, :description

  serialize :specie_types, Array
end
