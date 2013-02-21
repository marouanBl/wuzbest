# encoding: utf-8 
class CreateCitiesShops < ActiveRecord::Migration
  def change
    create_table :cities_shops do |t| 
      t.string :name 
      t.text :long_desc 
      t.decimal :coord_lat 
      t.decimal :coord_long 
      t.integer :main_shop_id 
      t.string :web 
      t.string :contact_phone 
      t.string :contact_fax 
      t.string :contact_email 
      t.integer :user_id 
      t.string :slug, :null => false  
      t.integer :shop_id 
      t.integer :shop_id 
      t.timestamps 
    end
  end
end

