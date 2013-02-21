# encoding: utf-8 
class ComparaisonsPost < ActiveRecord::Base 

  attr_accessible  :id, :value, :comparaison_id, :cities_picture, :cities_picture_id, :user_id, :manufacturer, :manufacturer_id, :comparaison, :comparaison_id

  belongs_to :manufacturer 
  belongs_to :product 
  belongs_to :cities_picture 
  belongs_to :comparaison 

  validates :value, :presence => true
  validates :user_id, :presence => true

end