# encoding: utf-8 
class CreateCensoredWords < ActiveRecord::Migration
  def change
    create_table :censored_words do |t| 
      t.string :value 
      t.string :slug 
      t.timestamps 
    end
  end
end

