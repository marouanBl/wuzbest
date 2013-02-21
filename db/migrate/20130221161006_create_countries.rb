# encoding: utf-8 
class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t| 
      t.string :name, :null => false  
      t.text :languages 
      t.string :ref 
      t.decimal :coord_lat 
      t.decimal :coord_long 
      t.integer :phone_prefix 
      t.integer :currency_id 
      t.timestamps 
    end
    add_index(:countries, [:currency_id], :name => 'countries_fk_country_currency1_idx') 
  end
end

