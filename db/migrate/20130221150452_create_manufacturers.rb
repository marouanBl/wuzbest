class CreateManufacturers < ActiveRecord::Migration
  def change
    create_table :manufacturers do |t|
      t.string :name
      t.string :adress
      t.decimal :hq_lat
      t.decimal :hq_long
      t.string :web
      t.text :long_desc
      t.date :founded_at
      t.date :closed_at
      t.timestamp :created_at
      t.timestamp :updated_at
      t.string :contact_phone
      t.string :contact_fax
      t.string :contact_email
      t.integer :owner_id
      t.integer :cover_id
      t.integer :user_id
      t.integer :country_id
      t.string :slug
      t.string :stock_ref
      t.float :stock_value
      t.integer :stock_dir
      t.integer :state_id
      t.integer :city_id

      t.timestamps
    end
  end
end
