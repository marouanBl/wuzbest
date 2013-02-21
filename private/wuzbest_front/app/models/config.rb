# encoding: utf-8 
class Config < ActiveRecord::Base 

  attr_accessible  :id, :value_name, :value, :config_type, :config_type_id

  belongs_to :config_type 


end