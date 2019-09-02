class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable, :omniauthable, :lockable,
         :timeoutable, :trackable
end
