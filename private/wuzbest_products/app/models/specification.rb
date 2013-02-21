# encoding: utf-8 
class Specification < ActiveRecord::Base 

  attr_accessible  :id, :value_name, :shown_value, :ref_value, :product, :product_id, :model_date, :specification, :specification_id

  belongs_to :product 
  has_and_belongs_to_many :specifications 
  has_and_belongs_to_many :products 


end