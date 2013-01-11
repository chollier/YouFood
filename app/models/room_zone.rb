class RoomZone < ActiveRecord::Base
  attr_accessible :name, :tables_attributes, :dinning_room_id
  
  has_many :tables
  belongs_to :dinning_room
  has_many :waiters
  
  accepts_nested_attributes_for :tables
  
end
