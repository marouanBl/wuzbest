class Comparaison < ActiveRecord::Base
  attr_accessible :category_id, :created_at, :first_product_id, :second_product_id, :slug, :user_id
end
