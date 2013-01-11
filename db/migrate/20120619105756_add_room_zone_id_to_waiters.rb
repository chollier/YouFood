class AddRoomZoneIdToWaiters < ActiveRecord::Migration
  def change
    add_column :waiters, :room_zone_id, :integer
  end
end
