class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable, :omniauthable, :lockable,
         :timeoutable, :trackable

  has_many :comments, dependent: :nullify
  
  def admin?
    admin
  end
end
