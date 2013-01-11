class CreateDinningRooms < ActiveRecord::Migration
  def change
    create_table :dinning_rooms do |t|
      t.string :address
      t.string :city
      t.string :zipcode
      t.string :name

      t.timestamps
    end
  end
end
