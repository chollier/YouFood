class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.boolean :taken
      t.boolean :ready

      t.timestamps
    end
  end
end
