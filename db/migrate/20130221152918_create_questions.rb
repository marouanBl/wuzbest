class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :content
      t.integer :status
      t.timestamp :created_at
      t.integer :user_id

      t.timestamps
    end
  end
end
