object @creture
attributes :id , :name, :hitpoints, :attack, :defense, :speed,
    :growth, :level, :current_hitpoints, :current_experience, :status, :preference, :specie_id
child :specie do
  extends 'api/v1/species/show'
end



