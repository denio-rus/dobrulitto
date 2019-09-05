class Material < ApplicationRecord
  has_many :specifications, dependent: :destroy  
  has_many :sketches, through: :specifications, source: :specificable, source_type: 'Sketch'
  has_many :watercolors, through: :specifications, source: :specificable, source_type: 'Watercolor'

  validates  :title, presence: true, uniqueness: true
end
