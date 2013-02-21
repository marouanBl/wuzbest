class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.integer :main_shop_id
      t.string :web
      t.string :contact_phone
      t.string :contact_fax
      t.string :contact_email
      t.integer :user_id
      t.string :slug
      t.integer :state_id
      t.integer :city_id

      t.timestamps
    end
  end
end
