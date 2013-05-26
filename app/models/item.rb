class Item < ActiveRecord::Base
  belongs_to :specie

  attr_accessible :specie_id, :name, :price

  validates :name, :presence => true
  validates :price,
    :presence => true,
    :numericality => {
      :greater_than_or_equal_to => 0
    }

  reverse_geocoded_by :name, :price
end
