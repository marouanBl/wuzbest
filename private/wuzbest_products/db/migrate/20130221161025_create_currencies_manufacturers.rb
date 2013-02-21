# encoding: utf-8 
class CreateCurrenciesManufacturers < ActiveRecord::Migration
  def change
    create_table :currencies_manufacturers do |t| 
      t.decimal :amount 
      t.date :available_until 
      t.boolean :is_limited 
      t.integer :currency_id 
      t.integer :manufacturer_id 
      t.timestamps 
    end
  end
end

