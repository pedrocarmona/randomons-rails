class Creature < ActiveRecord::Base
  include Status

  attr_accessible :specie_id, :name, :hitpoints, :attack, :defense, :speed,
    :growth, :level, :current_hitpoints, :current_experience, :status, :preference, :user_id

  validates :hitpoints, :attack, :defense, :speed, :growth, :level, :current_experience,
    :presence => true,
    :numericality => {
      :greater_than_or_equal_to => 0
    }
  validates :current_hitpoints, :numericality => {
      :greater_than_or_equal_to => 0,
      :less_than_or_equal_to => :hitpoints
    }
end
