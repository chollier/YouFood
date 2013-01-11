
class OrdersDishesController < ApplicationController
  
  def taken
    @orders_dish = OrdersDish.find(params[:id])
    @orders_dish.update_attribute(:taken, true)
  end
  
  def ready
    @orders_dish = OrdersDish.find(params[:id])
    @orders_dish.update_attribute(:ready, true)
    @delete_group = false
    
    if @orders_dish.order.dishes_left == 0
      @delete_group = true
    end
  end
  
end
