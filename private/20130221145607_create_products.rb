class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :refname
      t.timestamp :created_at
      t.timestamp :updated_at
      t.timestamp :released_at
      t.text :long_desc
      t.integer :manufacturer_id
      t.integer :brag_id
      t.integer :original_product_id
      t.string :slug

      t.timestamps
    end
  end
end
