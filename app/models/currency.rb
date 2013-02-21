# encoding: utf-8 
class Currency < ActiveRecord::Base 

  attr_accessible  :id, :ref, :value_to_usd

  has_many :countries, dependent: :destroy 

  validates :ref, :uniqueness => true

end