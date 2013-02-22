class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :username_canonical
      t.string :email
      t.string :email_canonical
      t.integer :enabled
      t.string :salt
      t.string :password
      t.timestamp :last_login
      t.integer :locked
      t.integer :expired
      t.timestamp :expires_at
      t.string :confirmation_token
      t.timestamp :password_requested_at
      t.text :roles
      t.integer :credentials_expired
      t.timestamp :credentials_expire_at
      t.integer :avatar
      t.integer :country_id
      t.integer :currency_id
      t.integer :state_id
      t.integer :city_id

      t.timestamps
    end
  end
end
