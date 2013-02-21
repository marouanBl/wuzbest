# encoding: utf-8 
class CitiesShop < ActiveRecord::Base 

  attr_accessible  :id, :name, :long_desc, :coord_lat, :coord_long, :main_shop_id, :web, :contact_phone, :contact_fax, :contact_email, :user_id, :slug, :shop, :shop_id

  belongs_to :shop 

  validates :slug, :presence => true

end