# encoding: utf-8 
class Picture < ActiveRecord::Base 

  attr_accessible  :id, :path, :mime_type, :uploaded_at, :label, :description, :file_size, :is_used, :width, :height, :xiff, :credentials, :is_highlighted

  has_many :users, dependent: :destroy 
  has_many :cities_pictures 
  has_many :countries, through: :cities_pictures 
  has_and_belongs_to_many :currencies 
  has_and_belongs_to_many :states 
  has_and_belongs_to_many :cities 
  has_many :board_folders, dependent: :destroy 
  has_many :pictures_users 
  has_many :users, through: :pictures_users 


end