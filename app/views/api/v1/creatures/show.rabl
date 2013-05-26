object @creture
attributes :id , :name, :hitpoints, :attack, :defense, :speed,
    :growth, :level, :current_hitpoints, :current_experience, :status, :preference
child :specie
    extends "specie/show"
end