class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :content
      t.timestamp :created_at
      t.integer :is_in_favor
      t.integer :user_id
      t.integer :parent_id

      t.timestamps
    end
  end
end
