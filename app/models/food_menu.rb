class FoodMenu < ActiveRecord::Base
  attr_accessible :name, :price, :image, :starters_attributes, :dishes_attributes, :deserts_attributes, :is_active
  
  has_many :starters
  has_many :dishes
  has_many :deserts
  
  accepts_nested_attributes_for :starters
  accepts_nested_attributes_for :dishes
  accepts_nested_attributes_for :deserts
  
  has_attached_file :image, :styles => { :medium => "238x238>", :thumb => "100x100>" }
  
  scope :active, where(:is_active => true)
  scope :inactive, where(:is_active => false)
  
end
