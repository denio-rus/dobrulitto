class Course < ApplicationRecord
  belongs_to :discipline
  has_many :lessons, dependent: :destroy

  validates :title,:description, presence: true
end
