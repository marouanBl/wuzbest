class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.string :slug
      t.integer :parent_id
      t.integer :category_id

      t.timestamps
    end
    add_index(:categories, [:category_id], :name => 'categories_fk_category_category1_idx')
  end
end