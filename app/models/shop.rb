class Shop < ActiveRecord::Base
  attr_accessible :city_id, :contact_email, :contact_fax, :contact_phone, :main_shop_id, :slug, :state_id, :user_id, :web

  has_many :products
end
