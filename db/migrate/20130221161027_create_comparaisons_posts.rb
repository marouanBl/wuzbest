# encoding: utf-8 
class CreateComparaisonsPosts < ActiveRecord::Migration
  def change
    create_table :comparaisons_posts do |t| 
      t.integer :value, :null => false  
      t.integer :product_id 
      t.integer :user_id, :null => false  
      t.integer :manufacturer_id 
      t.integer :comparaison_id 
      t.integer :comparaison_id 
      t.timestamps 
    end
  end
end

