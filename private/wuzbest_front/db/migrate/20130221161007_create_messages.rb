# encoding: utf-8 
class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t| 
      t.string :subject 
      t.text :content 
      t.boolean :is_seen 
      t.integer :sender_id 
      t.integer :reciever_id 
      t.integer :first_delete_id 
      t.integer :second_delete_id 
      t.integer :message_id 
      t.timestamps 
    end
    add_index(:messages, [:sender_id], :name => 'messages_fk_message_user1_idx') 
    add_index(:messages, [:reciever_id], :name => 'messages_fk_message_user2_idx') 
    add_index(:messages, [:first_delete_id], :name => 'messages_fk_message_user3_idx') 
    add_index(:messages, [:second_delete_id], :name => 'messages_fk_message_user4_idx') 
    add_index(:messages, [:message_id], :name => 'messages_fk_message_message1_idx') 
  end
end

