class Watercolor < ApplicationRecord
  belongs_to :wc_genre

  validates :title, :description, presence: true

  has_one_attached :picture
end
