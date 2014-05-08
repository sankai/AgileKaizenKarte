class Staff < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable,    # :validatable,
         :authentication_keys => [:staffcode]

  validates_uniqueness_of :email
  # validates_uniqueness_of :reset_password_token
  
end
