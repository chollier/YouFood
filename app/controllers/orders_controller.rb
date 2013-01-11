
class OrdersController < ApplicationController
  # GET /orders
  # GET /orders.json
  def index
    @orders = Order.not_ready

    # respond_to do |format|
    #   format.html # index.html.erb
    #   format.json { render json: @orders }
    # end
  end

  # GET /orders/1
  # GET /orders/1.json
  def show
    @order = Order.find(params[:id])
  
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @order }
    end
  end

  # GET /orders/new
  # GET /orders/new.json
  def new
    @order = Order.new
    @order.table_id = params[:table_id]

    @food_menu = FoodMenu.active.first

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @order }
    end
  end

  # GET /orders/1/edit
  # def edit
  #   @order = Order.find(params[:id])
  # end

  # POST /orders
  # POST /orders.json
  def create
    @order = Order.new(params[:order])
    @order.table_id = params[:table_id]

    respond_to do |format|
      if @order.save
        # PrivatePub.publish_to('/orders/new', @order)
        
        # format.js {render :partial => 'create'}
        format.html { redirect_to @order, notice: 'Order was successfully created.' }
        format.json { render json: @order, status: :created, location: @order }     
      else
        format.html { render action: "new" }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /orders/1
  # PUT /orders/1.json
  # def update
  #   @order = Order.find(params[:id])
  # 
  #   respond_to do |format|
  #     if @order.update_attributes(params[:order])
  #       format.html { redirect_to @order, notice: 'Order was successfully updated.' }
  #       format.json { head :no_content }
  #     else
  #       format.html { render action: "edit" }
  #       format.json { render json: @order.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @order = Order.find(params[:id])
    @order.destroy

    respond_to do |format|
      format.html { redirect_to orders_url }
      format.json { head :no_content }
    end
  end
  
  def call 
    @table = Table.find(params[:id])
  end
  
  
end
