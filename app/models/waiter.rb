class Waiter < ActiveRecord::Base
  attr_accessible :name, :room_zone_id
  
  belongs_to :room_zone
end
