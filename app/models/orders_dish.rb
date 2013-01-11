class OrdersDish < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :dish_id, :quantity
  
  scope :ready, where(ready: true)
  scope :not_ready, where(ready: false)
  scope :taken, where(taken: true)
  scope :not_taken, where(taken: false)
  
  belongs_to :order
  belongs_to :dish
end
