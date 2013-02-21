# encoding: utf-8 
class CreateSpecifications < ActiveRecord::Migration
  def change
    create_table :specifications do |t| 
      t.string :value_name, :null => false  
      t.string :shown_value, :null => false  
      t.integer :ref_value, :null => false  
      t.integer :product_id 
      t.date :model_date 
      t.integer :specification_id 
      t.timestamps 
    end
    add_index(:specifications, [:product_id], :name => 'specifications_fk_specification_product1_idx') 
    add_index(:specifications, [:specification_id], :name => 'specifications_fk_specification_specification1_idx') 
  end
end

