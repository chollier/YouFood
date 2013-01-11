class RemoveWaiterIdFromTables < ActiveRecord::Migration
  def up
    remove_column :tables, :waiter_id
  end

  def down
    add_column :tables, :waiter_id, :integer
  end
end
