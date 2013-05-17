class Move < ActiveRecord::Base
  include Type, Status

  attr_accessible :name, :move_types, :attack, :accuracy, :status, :status_probability, :description

  serialize :move_types, Array
end
