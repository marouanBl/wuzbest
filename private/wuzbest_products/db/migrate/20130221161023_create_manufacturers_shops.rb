# encoding: utf-8 
class CreateManufacturersShops < ActiveRecord::Migration
  def change
    create_table :manufacturers_shops do |t| 
      t.date :purchased_at, :null => false  
      t.integer :manufacturer_id 
      t.integer :shop_id 
      t.timestamps 
    end
  end
end

