class RenameTypeToFoodType < ActiveRecord::Migration
  def change
    rename_column :starters, :type, :food_type
    rename_column :dishes, :type, :food_type
    rename_column :deserts, :type, :food_type
  end

end
