# encoding: utf-8 
class Notification < ActiveRecord::Base 

  attr_accessible  :id, :content, :link, :type, :view_at

  has_and_belongs_to_many :subscriptions 
  has_and_belongs_to_many :users 


end