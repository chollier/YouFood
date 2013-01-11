
class OrdersDesertsController < ApplicationController
  def taken
    @orders_desert = OrdersDesert.find(params[:id])
    @orders_desert.update_attribute(:taken, true)
  end
  
  def ready
    @orders_desert = OrdersDesert.find(params[:id])
    @orders_desert.update_attribute(:ready, true)
    @delete_group = false
    
    if @orders_desert.order.deserts_left == 0
      @delete_group = true
    end
    
  end
end
