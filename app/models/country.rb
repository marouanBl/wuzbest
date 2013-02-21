# encoding: utf-8 
class Country < ActiveRecord::Base 

  attr_accessible  :id, :name, :languages, :ref, :coord_lat, :coord_long, :phone_prefix, :currency, :currency_id

  belongs_to :currency 
  has_many :states, dependent: :destroy 


end