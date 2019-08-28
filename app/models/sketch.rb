class Sketch < ApplicationRecord
  belongs_to :album

  validates :title, presence: true

  has_one_attached :picture
end
