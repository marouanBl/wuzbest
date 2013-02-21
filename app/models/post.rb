# encoding: utf-8 
class Post < ActiveRecord::Base 

  attr_accessible  :id, :title, :content, :user, :user_id, :score, :type

  belongs_to :user 
  has_and_belongs_to_many :comments 


end