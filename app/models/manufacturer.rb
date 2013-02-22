class Manufacturer < ActiveRecord::Base
  attr_accessible :adress, :city_id, :closed_at, :contact_email, :contact_fax, :contact_phone, :country_id, :cover_id, :created_at, :founded_at, :hq_lat, :hq_long, :long_desc, :name, :owner_id, :slug, :state_id, :stock_dir, :stock_ref, :stock_value, :updated_at, :user_id, :web
  has_many :products
  belongs_to :category

  # Composite primary key
  validates :id, :uniqueness => { :scope => [ :user_id , :category_id ] }
  validates :name, :presence => true, :uniqueness => true
  validates :long_desc, :length => { :minimum => 5 }

  validates :state_id , :city_id , :country_id, :presence => true , :allow_nil => false, :allow_blank => true
end
