# encoding: utf-8 
class Product < ActiveRecord::Base 

  attr_accessible  :id, :name, :refname, :released_at, :long_desc, :manufacturer_id, :cities_picture, :cities_picture_id, :product, :product_id, :slug

  has_many :board_folders_products 
  has_many :users, through: :board_folders_products 
  has_and_belongs_to_many :board_folders 
  has_many :board_folder_has_brags, dependent: :destroy 
  has_many :comparaisons_posts 
  has_many :manufacturers, through: :comparaisons_posts 
  has_and_belongs_to_many :shops 
  has_and_belongs_to_many :comparaisons 
  belongs_to :cities_picture 
  has_and_belongs_to_many :products 
  has_and_belongs_to_many :pictures 
  has_and_belongs_to_many :prices 
  has_many :products_shops 
  has_many :shops, through: :products_shops 
  has_many :specifications 
  has_and_belongs_to_many :categories 
  has_and_belongs_to_many :comments 
  has_many :categories_products 
  has_many :categories, through: :categories_products 

  validates :slug, :uniqueness => true

end