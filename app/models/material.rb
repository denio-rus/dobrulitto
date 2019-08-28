class Material < ApplicationRecord
  has_many :used_materials, dependent: :destroy  
  has_many :sketches, through: :used_materials

  validates  :title, presence: true
end
