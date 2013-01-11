class CreateOrdersJoinTables < ActiveRecord::Migration
  
  def change
    
    create_table :orders_deserts do |t|
      t.references :order
      t.references :desert
      t.integer :quantity
      t.boolean :taken, :default => false
      t.boolean :ready, :default => false
    end
    
    create_table :orders_starters do |t|
      t.references :order
      t.references :starter
      t.integer :quantity
      t.boolean :taken, :default => false
      t.boolean :ready, :default => false
    end
    
    create_table :orders_dishes do |t|
      t.references :order
      t.references :dish
      t.integer :quantity
      t.boolean :taken, :default => false
      t.boolean :ready, :default => false
    end
    
  end
  
end
