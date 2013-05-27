class Building < ActiveRecord::Base
  TYPES = ['MedicalCenter', 'Shop']

  has_many :building_items, :dependent => :destroy
  has_many :items, :through => :building_items

  attr_accessible :type, :name, :latitude, :longitude, :building_items_attributes

  accepts_nested_attributes_for :building_items,
    :allow_destroy => true,
    :reject_if => lambda { |a| a[:item_id].blank? }

  validates :name, :latitude, :longitude,
    :presence => true

  reverse_geocoded_by :latitude, :longitude

  def self.find_by_location(lat, lng)
    if lat && lng
      scope = near([lat, lng], 10, :units => :km)
    else
      scope = scoped
    end
    scope.order('name ASC')
  end
end
