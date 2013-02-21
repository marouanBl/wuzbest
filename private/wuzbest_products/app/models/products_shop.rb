# encoding: utf-8 
class ProductsShop < ActiveRecord::Base 

  attr_accessible  :id, :supply_count, :shop, :shop_id, :product, :product_id

  belongs_to :shop 
  belongs_to :product 


end