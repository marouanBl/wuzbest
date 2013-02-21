# encoding: utf-8 
class CreateComparaisonsProducts < ActiveRecord::Migration
  def change
    create_table :comparaisons_products do |t| 
      t.integer :manufacturer_id 
      t.integer :product_id 
      t.integer :product_id 
      t.integer :product_id 
      t.timestamps 
    end
  end
end

