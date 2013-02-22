class Category < ActiveRecord::Base
  attr_accessible :name, :parent_id, :slug
  has_many :products

end
