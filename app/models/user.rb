class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable




  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :avatar, :city_id, :confirmation_token, :country_id, :credentials_expire_at, :credentials_expired, :currency_id, :email, :email_canonical, :enabled, :expired, :expires_at, :last_login, :locked, :password, :password_requested_at, :roles, :salt, :state_id, :username, :username_canonical
end
