# encoding: utf-8 
class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t| 
      t.string :label 
      t.text :content 
      t.string :is_fixed 
      t.integer :user_id 
      t.integer :fixed_by_id 
      t.datetime :fixed_at 
      t.timestamps 
    end
    add_index(:feedbacks, [:user_id], :name => 'feedbacks_fk_feedback_user1_idx') 
    add_index(:feedbacks, [:fixed_by_id], :name => 'feedbacks_fk_feedback_user2_idx') 
  end
end

