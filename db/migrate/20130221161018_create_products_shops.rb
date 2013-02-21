# encoding: utf-8 
class CreateProductsShops < ActiveRecord::Migration
  def change
    create_table :products_shops do |t| 
      t.integer :supply_count 
      t.integer :shop_id 
      t.integer :product_id 
      t.timestamps 
    end
  end
end

