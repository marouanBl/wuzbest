# encoding: utf-8 
class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t| 
      t.string :title, :null => false  
      t.text :content, :null => false  
      t.integer :user_id 
      t.integer :score 
      t.integer :type, :default => '0', :null => false  
      t.timestamps 
    end
    add_index(:posts, [:user_id], :name => 'posts_fk_post_user1_idx') 
  end
end

