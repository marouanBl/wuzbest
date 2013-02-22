class Question < ActiveRecord::Base
  attr_accessible :content, :created_at, :status, :user_id
  has_many :answers
end
