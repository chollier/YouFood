class Cuisine < ActiveRecord::Base
  belongs_to :dinning_room
  # attr_accessible :title, :body
  
  attr_accessible :name
end
