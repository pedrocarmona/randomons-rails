class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :token_authenticatable

  has_many :creatures, :dependent => :destroy
  has_many :user_items, :dependent => :destroy
  has_many :items, :through => :user_items

  attr_accessible :name, :email, :password, :password_confirmation, :remember_me, :user_items_attributes

  accepts_nested_attributes_for :user_items,
    :allow_destroy => true,
    :reject_if => lambda { |a| a[:item_id].blank? }

  before_save :ensure_authentication_token
end
