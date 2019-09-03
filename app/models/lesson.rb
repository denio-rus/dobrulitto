class Lesson < ApplicationRecord
  belongs_to :course

  validates :title, presence: true, uniqueness: true
  validates :title, :description, presence: true
end
