class Move < ActiveRecord::Base
  include Type, Status

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
end
