object @population
attributes :id, :latitude, :longitude, :radius, :hidden

child :specie do
  extends 'api/v1/species/show'
end
