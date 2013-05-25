class Population < ActiveRecord::Base
  attr_accessible :specie_id, :latitude, :longitude, :radius

  validates :specie_id, :latitude, :longitude, :radius,
    :presence => true
end
