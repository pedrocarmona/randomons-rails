object @building
attributes :id, :name, :latitude, :longitude

child :building_items => :items do
  attributes :name, :price, :description
end
