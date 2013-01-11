class AddDescritionToFood < ActiveRecord::Migration
  def change
    add_column :starters, :description, :text
    add_column :dishes, :description, :text
    add_column :deserts, :description, :text
  end
end
