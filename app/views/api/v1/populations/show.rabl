object @population
attributes :id, :latitude, :longitude, :radius

child :specie do
  extends 'api/v1/species/show'
end
