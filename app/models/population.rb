class Population < ActiveRecord::Base
  belongs_to :specie

  attr_accessible :specie_id, :latitude, :longitude, :radius

  validates :specie_id, :latitude, :longitude, :radius,
    :presence => true

  reverse_geocoded_by :latitude, :longitude
end
