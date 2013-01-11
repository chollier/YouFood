
class DinningRoomsController < ApplicationController
  # GET /dinning_rooms
  # GET /dinning_rooms.json
  def index
    @dinning_rooms = DinningRoom.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @dinning_rooms }
    end
  end

  # GET /dinning_rooms/1
  # GET /dinning_rooms/1.json
  def show
    @dinning_room = DinningRoom.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @dinning_room }
    end
  end

  # GET /dinning_rooms/new
  # GET /dinning_rooms/new.json
  def new
    @dinning_room = DinningRoom.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @dinning_room }
    end
  end

  # GET /dinning_rooms/1/edit
  def edit
    @dinning_room = DinningRoom.find(params[:id])
  end

  # POST /dinning_rooms
  # POST /dinning_rooms.json
  def create
    @dinning_room = DinningRoom.new(params[:dinning_room])

    respond_to do |format|
      if @dinning_room.save
        format.html { redirect_to @dinning_room, notice: 'Dinning room was successfully created.' }
        format.json { render json: @dinning_room, status: :created, location: @dinning_room }
      else
        format.html { render action: "new" }
        format.json { render json: @dinning_room.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /dinning_rooms/1
  # PUT /dinning_rooms/1.json
  def update
    @dinning_room = DinningRoom.find(params[:id])

    respond_to do |format|
      if @dinning_room.update_attributes(params[:dinning_room])
        format.html { redirect_to @dinning_room, notice: 'Dinning room was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @dinning_room.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dinning_rooms/1
  # DELETE /dinning_rooms/1.json
  def destroy
    @dinning_room = DinningRoom.find(params[:id])
    @dinning_room.destroy

    respond_to do |format|
      format.html { redirect_to dinning_rooms_url }
      format.json { head :no_content }
    end
  end
end
