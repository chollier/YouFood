class CreateWaiters < ActiveRecord::Migration
  def change
    create_table :waiters do |t|
      t.string :name
      t.references :dinning_room

      t.timestamps
    end
  end
end
