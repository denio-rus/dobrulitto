class Sketch < ApplicationRecord
  belongs_to :album
  has_many :used_materials, dependent: :destroy
  has_many :materials, through: :used_materials

  validates :title, :description, presence: true

  has_one_attached :picture
end
