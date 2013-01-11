class OrdersDesert < ActiveRecord::Base
  attr_accessible :desert_id, :quantity
  
  scope :ready, where(ready: true)
  scope :not_ready, where(ready: false)
  scope :taken, where(taken: true)
  scope :not_taken, where(taken: false)
  
  belongs_to :order
  belongs_to :desert
end
