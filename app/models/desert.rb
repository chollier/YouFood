class Desert < ActiveRecord::Base
  attr_accessible :name, :food_type, :description, :price, :image
  
  has_attached_file :image, :styles => { :medium => "238x238>", :thumb => "100x100>" }
  
  
  belongs_to :food_menu
end
