class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,  :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :company_name, :sur_name, :presence => true
  validates :company_name, :sur_name, :uniqueness => true
  

  # Setup accessible (or protected) attributes for your model
  attr_accessible :company_name, :sur_name, :email, :password, :password_confirmation, :remember_me
end
