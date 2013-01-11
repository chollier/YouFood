class RemoveDinningRoomIdFromWaiter < ActiveRecord::Migration
  def up
    remove_column :waiters, :dinning_room_id
  end

  def down
    add_column :waiters, :dinning_room_id, :integer
  end
end
