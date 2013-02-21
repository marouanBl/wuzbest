# encoding: utf-8 
class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t| 
      t.string :path, :null => false  
      t.string :mime_type, :null => false  
      t.datetime :uploaded_at, :null => false  
      t.string :label, :null => false  
      t.text :description, :default => 'NULL' 
      t.string :file_size, :null => false  
      t.integer :is_used, :null => false  
      t.integer :width, :null => false  
      t.integer :height, :null => false  
      t.text :xiff, :default => 'NULL' 
  # credentials: (DC2Type:array)
      t.text :credentials, :default => 'NULL' 
      t.boolean :is_highlighted, :default => 'false', :null => false  
      t.timestamps 
    end
  end
end

