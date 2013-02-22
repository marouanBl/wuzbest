class Answer < ActiveRecord::Base
  attr_accessible :content, :created_at, :parent_id, :updated_at, :user_id
  belongs_to :user_id
  has_and_belongs_to_many :questions

  validates :content, :presence => true , :length => {:minimum => 5}

end
