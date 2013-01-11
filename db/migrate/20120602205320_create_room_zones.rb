class CreateRoomZones < ActiveRecord::Migration
  def change
    create_table :room_zones do |t|
      t.string :name
      t.references :dinning_room

      t.timestamps
    end
  end
end
