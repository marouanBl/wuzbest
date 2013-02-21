class Comment < ActiveRecord::Base
  attr_accessible :content, :created_at, :is_in_favor, :parent_id, :user_id
end
