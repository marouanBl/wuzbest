class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.text :content
      t.timestamp :created_at
      t.timestamp :updated_at
      t.integer :user_id
      t.integer :parent_id

      t.timestamps
    end
  end
end
