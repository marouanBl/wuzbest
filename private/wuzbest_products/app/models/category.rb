# encoding: utf-8 
class Category < ActiveRecord::Base 

  attr_accessible  :id, :name, :slug, :category, :category_id

  has_and_belongs_to_many :categories 
  has_and_belongs_to_many :products 
  has_and_belongs_to_many :manufacturers 
  has_and_belongs_to_many :shops 
  has_many :credibilities, dependent: :destroy 

  validates :slug, :uniqueness => true

end