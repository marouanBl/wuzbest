# encoding: utf-8 
class BoardFoldersProduct < ActiveRecord::Base 

  attr_accessible  :id, :is_posessed, :user, :user_id, :product, :product_id

  belongs_to :user 
  belongs_to :product 

  validates :is_posessed, :presence => true

end