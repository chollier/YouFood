class CreateDeserts < ActiveRecord::Migration
  def change
    create_table :deserts do |t|
      t.string :name
      t.string :type
      t.references :food_menu

      t.timestamps
    end
  end
end
