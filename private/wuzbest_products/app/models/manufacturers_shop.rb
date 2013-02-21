# encoding: utf-8 
class ManufacturersShop < ActiveRecord::Base 

  attr_accessible  :id, :purchased_at, :manufacturer, :manufacturer_id, :shop, :shop_id

  belongs_to :manufacturer 
  belongs_to :shop 

  validates :purchased_at, :presence => true

end