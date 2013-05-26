class SpecieMove < ActiveRecord::Base
  belongs_to :specie
  belongs_to :move

  attr_accessible :specie_id, :move_id, :level

  validates :specie_id, :move_id,
    :presence => true

  validates :level,
    :presence => true,
    :numericality => {
      :greater_than_or_equal_to => 0
    }

  delegate :name, to: :move
end
