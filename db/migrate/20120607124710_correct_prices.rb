class CorrectPrices < ActiveRecord::Migration
  def change
    add_column :starters, :price, :float
    add_column :dishes, :price, :float
    add_column :deserts, :price, :float
    remove_column :food_menus, :price
  end
end
