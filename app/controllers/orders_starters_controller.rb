
class OrdersStartersController < ApplicationController
  
  def taken
    @orders_starter = OrdersStarter.find(params[:id])
    @orders_starter.update_attribute(:taken, true)
  end
  
  def ready
    @orders_starter = OrdersStarter.find(params[:id])
    @orders_starter.update_attribute(:ready, true)
    
    @delete_group = false
    
    if @orders_starter.order.starters_left == 0
      @delete_group = true
    end
    
  end
  
end
