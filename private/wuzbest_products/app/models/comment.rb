# encoding: utf-8 
class Comment < ActiveRecord::Base 

  attr_accessible  :id, :content, :is_in_favor, :cities_picture, :cities_picture_id, :comment, :comment_id

  has_and_belongs_to_many :posts 
  belongs_to :cities_picture 
  has_and_belongs_to_many :comments 
  has_and_belongs_to_many :shops 
  has_and_belongs_to_many :manufacturers 
  has_and_belongs_to_many :products 
  has_and_belongs_to_many :comparaisons 
  has_and_belongs_to_many :supplies 


end