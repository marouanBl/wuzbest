# encoding: utf-8 
class CreateAdminContacts < ActiveRecord::Migration
  def change
    create_table :admin_contacts do |t| 
      t.integer :user_id 
      t.boolean :is_closed, :default => 'false', :null => false  
      t.timestamps 
    end
    add_index(:admin_contacts, [:user_id], :name => 'admin_contacts_fk_admin_contact_user1_idx') 
  end
end

