class Move < ActiveRecord::Base
  include Type, Status

  has_many :specie_moves, :dependent => :destroy
  has_many :species, :through => :specie_moves

  attr_accessible :name, :move_types, :attack, :accuracy, :status, :status_probability, :description

  validates :name, :presence => true
  validates :attack,
    :presence => true,
    :numericality => {
      :greater_than_or_equal_to => 0
    }
  validates :accuracy, :status_probability,
    :presence => true,
    :numericality => {
      :greater_than_or_equal_to => 0,
      :less_than_or_equal_to => 100
    }

  serialize :move_types, Array

  def move_types=(values)
    write_attribute(:move_types, Array(values).delete_if { |v| v == '' }.map(&:to_i))
  end

  def move_types_names
    move_types.map { |type| Type.name(type) }.join(', ')
  end

  def status_name
    Status.name(status)
  end
end
