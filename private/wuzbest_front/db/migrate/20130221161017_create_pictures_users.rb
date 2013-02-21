# encoding: utf-8 
class CreatePicturesUsers < ActiveRecord::Migration
  def change
    create_table :pictures_users do |t| 
      t.string :name 
      t.integer :cover_id, :null => false  
      t.integer :picture_id 
      t.timestamps 
    end
  end
end

