# encoding: utf-8 
class CreateCitiesPictures < ActiveRecord::Migration
  def change
    create_table :cities_pictures do |t| 
      t.string :username, :null => false  
      t.string :username_canonical, :null => false  
      t.string :email, :null => false  
      t.string :email_canonical, :null => false  
      t.integer :enabled, :null => false  
      t.string :salt, :null => false  
      t.string :password, :null => false  
      t.datetime :last_login, :default => 'NULL' 
      t.integer :locked, :null => false  
      t.integer :expired, :null => false  
      t.datetime :expires_at, :default => 'NULL' 
      t.string :confirmation_token, :default => 'NULL' 
      t.datetime :password_requested_at, :default => 'NULL' 
  # roles: (DC2Type:array)
      t.text :roles, :null => false  
      t.integer :credentials_expired, :null => false  
      t.datetime :credentials_expire_at, :default => 'NULL' 
      t.integer :avatar, :null => false  
      t.integer :picture_id 
      t.integer :picture_id 
      t.integer :picture_id 
      t.integer :picture_id 
      t.timestamps 
    end
  end
end

