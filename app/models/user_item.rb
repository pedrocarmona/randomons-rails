class UserItem < ActiveRecord::Base
  belongs_to :user
  belongs_to :item

  attr_accessible :user_id, :item_id, :quantity

  validates :user_id, :item_id,
    :presence => true
  validates :quantity,
    :presence => true,
    :numericality => {
      :greater_than_or_equal_to => 0
    }

  delegate :name, to: :item
end
