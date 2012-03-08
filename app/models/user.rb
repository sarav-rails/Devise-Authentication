class User < ActiveRecord::Base
  validates :company_name, :surname, :presence => true, :uniqueness => true
  
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,  :confirmable,
         :recoverable, :rememberable, :trackable, :validatable
 

  # Setup accessible (or protected) attributes for your model
  attr_accessible :company_name, :surname, :email, :password, :password_confirmation, :remember_me
end
