class AddIsActiveToFoodMenus < ActiveRecord::Migration
  def change
    add_column :food_menus, :is_active, :boolean
  end
end
