# encoding: utf-8 
class State < ActiveRecord::Base 

  attr_accessible  :id, :name, :slug, :country, :country_id

  belongs_to :country 
  has_many :cities, dependent: :destroy 

  validates :slug, :uniqueness => true

end