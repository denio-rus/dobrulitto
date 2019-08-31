class Material < ApplicationRecord
  has_many :specifications, dependent: :destroy  
  has_many :specificables, through: :specifications

  validates  :title, presence: true, uniqueness: true
end
