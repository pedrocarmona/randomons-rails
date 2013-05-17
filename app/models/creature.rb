class Creature < ActiveRecord::Base
  attr_accessible :specie_id, :name, :hitpoints, :attack, :defense, :speed,
    :growth, :level, :current_hitpoints, :current_experience, :status, :preference, :user_id
end
