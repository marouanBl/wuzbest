# encoding: utf-8 
class CreateBoardFoldersProducts < ActiveRecord::Migration
  def change
    create_table :board_folders_products do |t| 
      t.boolean :is_posessed, :default => 'false', :null => false  
      t.integer :user_id 
      t.integer :product_id 
      t.integer :product_id 
      t.timestamps 
    end
  end
end

