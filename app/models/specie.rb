class Specie < ActiveRecord::Base
  include Type

  attr_accessible :name, :base_hitpoints, :base_attack, :base_defense, :base_speed,
    :specie_types, :experience_function, :description

  validates :name, :presence => true
  validates :base_hitpoints, :base_attack, :base_defense, :base_speed,
    :presence => true,
    :numericality => {
      :greater_than_or_equal_to => 0
    }

  serialize :specie_types, Array
end
