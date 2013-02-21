# encoding: utf-8 
class CreateConfigTypes < ActiveRecord::Migration
  def change
    create_table :config_types do |t| 
      t.string :name, :null => false  
      t.string :slug, :null => false  
      t.timestamps 
    end
  end
end

