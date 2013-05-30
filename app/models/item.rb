class Item < ActiveRecord::Base
  belongs_to :specie
  has_many :user_items, :dependent => :destroy
  has_many :users, :through => :user_items
  has_many :building_items, :dependent => :destroy
  has_many :buildings, :through => :building_items

  attr_accessible :specie_id, :name, :description

  validates :name, :presence => true
end
