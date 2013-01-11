
class RoomZonesController < ApplicationController
  # GET /room_zones
  # GET /room_zones.json
  def index
    @room_zones = RoomZone.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @room_zones }
    end
  end

  # GET /room_zones/1
  # GET /room_zones/1.json
  def show
    @room_zone = RoomZone.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @room_zone }
    end
  end

  # GET /room_zones/new
  # GET /room_zones/new.json
  def new
    @room_zone = RoomZone.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @room_zone }
    end
  end

  # GET /room_zones/1/edit
  def edit
    @room_zone = RoomZone.find(params[:id])
  end

  # POST /room_zones
  # POST /room_zones.json
  def create
    @room_zone = RoomZone.new(params[:room_zone])

    respond_to do |format|
      if @room_zone.save
        format.html { redirect_to @room_zone, notice: 'Room zone was successfully created.' }
        format.json { render json: @room_zone, status: :created, location: @room_zone }
      else
        format.html { render action: "new" }
        format.json { render json: @room_zone.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /room_zones/1
  # PUT /room_zones/1.json
  def update
    @room_zone = RoomZone.find(params[:id])

    respond_to do |format|
      if @room_zone.update_attributes(params[:room_zone])
        format.html { redirect_to @room_zone, notice: 'Room zone was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @room_zone.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /room_zones/1
  # DELETE /room_zones/1.json
  def destroy
    @room_zone = RoomZone.find(params[:id])
    @room_zone.destroy

    respond_to do |format|
      format.html { redirect_to room_zones_url }
      format.json { head :no_content }
    end
  end
end
