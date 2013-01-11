class CreateCuisines < ActiveRecord::Migration
  def change
    create_table :cuisines do |t|
      t.references :dinning_room

      t.timestamps
    end
    add_index :cuisines, :dinning_room_id
  end
end
