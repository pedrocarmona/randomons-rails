class SpecieMove < ActiveRecord::Base
  belongs_to :specie
  belongs_to :move

  attr_accessible :specie_id, :move_id, :level
end
