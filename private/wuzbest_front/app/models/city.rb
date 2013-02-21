# encoding: utf-8 
class City < ActiveRecord::Base 

  attr_accessible  :id, :name, :slug, :state, :state_id

  belongs_to :state 

  validates :slug, :uniqueness => true

end