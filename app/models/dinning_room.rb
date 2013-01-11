class DinningRoom < ActiveRecord::Base
  attr_accessible :name, :address, :city, :zipcode, :room_zones_attributes, :cuisines_attributes
  
  has_many :room_zones
  has_many :cuisines
  
  accepts_nested_attributes_for :room_zones, :cuisines
  
end
