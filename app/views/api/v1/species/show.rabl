object @specie
attributes :id, :name, :base_hitpoints, :base_attack, :base_defense, :base_speed, :specie_types, :description

child :moves do
  extends 'api/v1/moves/index'
end
