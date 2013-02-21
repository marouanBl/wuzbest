# encoding: utf-8 
class CitiesManufacturer < ActiveRecord::Base 

  attr_accessible  :id, :name, :adress, :hq_lat, :hq_long, :web, :long_desc, :founded_at, :closed_at, :contact_phone, :contact_fax, :contact_email, :owner_id, :cover_id, :user_id, :manufacturer, :manufacturer_id, :slug, :stock_ref, :stock_value, :stock_dir

  belongs_to :manufacturer 

  validates :name, :presence => true
  validates :cover_id, :presence => true
  validates :slug, :presence => true

end