# encoding: utf-8 
class CitiesPicture < ActiveRecord::Base 

  attr_accessible  :id, :username, :username_canonical, :email, :email_canonical, :enabled, :salt, :password, :last_login, :locked, :expired, :expires_at, :confirmation_token, :password_requested_at, :roles, :credentials_expired, :credentials_expire_at, :avatar, :picture, :picture_id

  belongs_to :picture 

  validates :username, :presence => true
  validates :username_canonical, :presence => true
  validates :email, :presence => true
  validates :email_canonical, :presence => true
  validates :enabled, :presence => true
  validates :salt, :presence => true
  validates :password, :presence => true
  validates :locked, :presence => true
  validates :expired, :presence => true
  validates :roles, :presence => true
  validates :credentials_expired, :presence => true
  validates :avatar, :presence => true

end