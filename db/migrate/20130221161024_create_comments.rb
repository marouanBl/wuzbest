# encoding: utf-8 
class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t| 
      t.text :content 
      t.string :is_in_favor 
      t.integer :cities_picture_id 
      t.integer :comment_id 
      t.timestamps 
    end
    add_index(:comments, [:cities_picture_id], :name => 'comments_fk_comment_user1_idx') 
    add_index(:comments, [:comment_id], :name => 'comments_fk_comment_comment1_idx') 
  end
end

