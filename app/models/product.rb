class Product < ActiveRecord::Base
  attr_accessible :brag_id, :created_at, :long_desc, :manufacturer_id, :name, :original_product_id, :refname, :released_at, :slug, :updated_at
has_many :specifications
end
