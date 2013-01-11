class Table < ActiveRecord::Base
  attr_accessible :capacity, :room_zone_id, :name
  
  belongs_to :room_zone
  has_many :orders
  
end
