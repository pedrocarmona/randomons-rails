class Population < ActiveRecord::Base
  belongs_to :specie

  attr_accessible :specie_id, :latitude, :longitude, :radius

  validates :specie_id, :latitude, :longitude, :radius,
    :presence => true

  reverse_geocoded_by :latitude, :longitude

  def self.find_by_location(lat, lng)
    if lat && lng
      near([lat, lng], 0.01, :units => :km)
    else
      []
    end
  end
end
