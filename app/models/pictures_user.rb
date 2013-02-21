# encoding: utf-8 
class PicturesUser < ActiveRecord::Base 

  attr_accessible  :id, :name, :cover_id, :picture, :picture_id

  belongs_to :picture 

  validates :cover_id, :presence => true

end