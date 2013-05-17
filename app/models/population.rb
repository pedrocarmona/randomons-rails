class Population < ActiveRecord::Base
  attr_accessible :specie_id, :latitude, :longitude, :radius
end
