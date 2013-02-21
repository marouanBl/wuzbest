# encoding: utf-8 
class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t| 
      t.string :name, :null => false  
      t.string :refname 
      t.date :released_at 
      t.text :long_desc 
      t.integer :manufacturer_id 
      t.integer :cities_picture_id 
      t.integer :product_id 
      t.string :slug, :null => false  
      t.timestamps 
    end
    add_index(:products, [:cities_picture_id], :name => 'products_fk_product_user1_idx') 
    add_index(:products, [:product_id], :name => 'products_fk_product_product1_idx') 
  end
end

