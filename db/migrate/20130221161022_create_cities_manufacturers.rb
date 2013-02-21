# encoding: utf-8 
class CreateCitiesManufacturers < ActiveRecord::Migration
  def change
    create_table :cities_manufacturers do |t| 
      t.string :name, :null => false  
      t.string :adress 
      t.decimal :hq_lat 
      t.decimal :hq_long 
      t.string :web 
      t.text :long_desc 
      t.date :founded_at 
      t.date :closed_at 
      t.string :contact_phone 
      t.string :contact_fax 
      t.string :contact_email 
      t.integer :owner_id 
      t.integer :cover_id, :null => false  
      t.integer :user_id 
      t.integer :manufacturer_id 
      t.string :slug, :null => false  
      t.string :stock_ref, :limit => 16 
      t.float :stock_value 
      t.string :stock_dir 
      t.integer :manufacturer_id 
      t.integer :manufacturer_id 
      t.timestamps 
    end
  end
end

