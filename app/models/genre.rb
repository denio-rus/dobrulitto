class Genre < ApplicationRecord
  has_many :watercolors, dependent: :nullify

  validates :title, presence: true
end
