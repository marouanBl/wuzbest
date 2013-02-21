class Answer < ActiveRecord::Base
  attr_accessible :content, :created_at, :parent_id, :updated_at, :user_id
end
