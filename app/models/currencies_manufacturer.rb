# encoding: utf-8 
class CurrenciesManufacturer < ActiveRecord::Base 

  attr_accessible  :id, :amount, :available_until, :is_limited, :currency, :currency_id, :manufacturer, :manufacturer_id

  belongs_to :currency 
  belongs_to :manufacturer 


end