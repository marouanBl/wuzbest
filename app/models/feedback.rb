# encoding: utf-8 
class Feedback < ActiveRecord::Base 

  attr_accessible  :id, :label, :content, :is_fixed, :user_id, :fixed_by_id, :fixed_at

  belongs_to :user, class_name: 'User' 
  belongs_to :fixed_by, class_name: 'User' 


end