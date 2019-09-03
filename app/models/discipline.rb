class Discipline < ApplicationRecord
  has_many :courses, dependent: :nullify
  
  validates :title, presence: true, uniqueness: true
end
