class Watercolor < ApplicationRecord
  belongs_to :genre
  has_many :specifications, as: :specificable, dependent: :destroy
  has_many :materials, through: :specifications

  validates :title, :description, :year, presence: true

  has_one_attached :picture

  accepts_nested_attributes_for :specifications, reject_if: :all_blank, allow_destroy: true
end
