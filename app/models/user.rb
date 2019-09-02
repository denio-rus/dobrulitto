class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable, :omniauthable, :lockable,
         :timeoutable, :trackable
  
  def admin?
    true
  end
end
