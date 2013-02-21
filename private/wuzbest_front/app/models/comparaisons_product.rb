# encoding: utf-8 
class ComparaisonsProduct < ActiveRecord::Base 

  attr_accessible  :id, :manufacturer, :manufacturer_id, :product, :product_id

  belongs_to :manufacturer 
  belongs_to :product 


end