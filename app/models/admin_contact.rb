# encoding: utf-8 
class AdminContact < ActiveRecord::Base 

  attr_accessible  :id, :user, :user_id, :is_closed

  belongs_to :user 
  has_and_belongs_to_many :messages

  validates :user_id, :presence => true
  validates :is_closed, :presence => false


end