# encoding: utf-8 
class CreateNotifications < ActiveRecord::Migration
  def change
    create_table :notifications do |t| 
      t.string :content, :null => false  
      t.string :link, :null => false  
      t.integer :type, :null => false  
      t.datetime :view_at 
      t.timestamps 
    end
  end
end

