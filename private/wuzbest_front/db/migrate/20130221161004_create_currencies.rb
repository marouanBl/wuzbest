# encoding: utf-8 
class CreateCurrencies < ActiveRecord::Migration
  def change
    create_table :currencies do |t| 
      t.string :ref, :null => false  
      t.float :value_to_usd, :null => false  
      t.timestamps 
    end
  end
end

