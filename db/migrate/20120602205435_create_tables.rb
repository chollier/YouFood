class CreateTables < ActiveRecord::Migration
  def change
    create_table :tables do |t|
      t.integer :capacity
      t.references :room_zone
      t.references :waiter
      t.string :name

      t.timestamps
    end
  end
end
