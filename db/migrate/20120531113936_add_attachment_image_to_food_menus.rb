class AddAttachmentImageToFoodMenus < ActiveRecord::Migration
  def self.up
    add_column :food_menus, :image_file_name, :string
    add_column :food_menus, :image_content_type, :string
    add_column :food_menus, :image_file_size, :integer
    add_column :food_menus, :image_updated_at, :datetime
  end

  def self.down
    remove_column :food_menus, :image_file_name
    remove_column :food_menus, :image_content_type
    remove_column :food_menus, :image_file_size
    remove_column :food_menus, :image_updated_at
  end
end
