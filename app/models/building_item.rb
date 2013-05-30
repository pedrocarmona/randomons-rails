class BuildingItem < ActiveRecord::Base
  belongs_to :building
  belongs_to :item

  attr_accessible :building_id, :item_id, :price

  validates :building_id, :item_id,
    :presence => true
  validates :price,
    :presence => true,
    :numericality => {
      :greater_than_or_equal_to => 0
    }

  delegate :name, :description, :to => :item
end
