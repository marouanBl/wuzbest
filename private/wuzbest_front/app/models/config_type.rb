# encoding: utf-8 
class ConfigType < ActiveRecord::Base 

  attr_accessible  :id, :name, :slug

  has_many :configs, dependent: :destroy 

  validates :name, :presence => true
  validates :slug, :presence => true, :uniqueness => true

end