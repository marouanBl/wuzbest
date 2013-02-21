class CreateComparaisons < ActiveRecord::Migration
  def change
    create_table :comparaisons do |t|
      t.timestamp :created_at
      t.string :slug
      t.integer :first_product_id
      t.integer :second_product_id
      t.integer :user_id
      t.integer :category_id

      t.timestamps
    end
  end
end
