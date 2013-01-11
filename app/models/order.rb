class Order < ActiveRecord::Base
  attr_accessible :table_id, :ready, :taken, :deserts, :starters, :dishes, :starters_attributes, :dishes_attributes, :deserts_attributes, :orders_starters_attributes, :orders_dishes_attributes, :orders_deserts_attributes
  
  belongs_to :table  
  
  has_many :orders_deserts, :dependent => :destroy
  has_many :orders_starters, :dependent => :destroy
  has_many :orders_dishes, :dependent => :destroy
  has_many :deserts, :through => :orders_deserts
  has_many :starters, :through => :orders_starters
  has_many :dishes, :through => :orders_dishes
  
  accepts_nested_attributes_for :orders_starters
  accepts_nested_attributes_for :orders_dishes
  accepts_nested_attributes_for :orders_deserts
  
  def price    
    ['starters', 'dishes', 'deserts'].collect { |course| self.send("orders_#{course}").collect { |x| x.quantity*x.send(course.singularize).price }.inject { |sum,x| sum+x } }.inject { |a, b| a + b}
  end
  
  %w(starters dishes deserts).each do |nee|
    define_method("#{nee}_left") { self.send("orders_#{nee}").not_ready.count }
  end
  
  def self.has_starters_left
    Order.where(:start)
  end
  
  # w00ts
  scope :not_ready, lambda {
    joins(:orders_deserts, :orders_starters, :orders_dishes).where('orders_starters.ready = false OR orders_deserts.ready = false OR orders_dishes.ready = false').uniq
  }
  
end
