# encoding: utf-8 
class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t| 
      t.string :name, :null => false  
      t.string :slug, :null => false  
      t.integer :state_id 
      t.timestamps 
    end
    add_index(:cities, [:state_id], :name => 'cities_fk_city_state1_idx') 
  end
end

