class Genre < ApplicationRecord
  has_many :watercolors, dependent: :destroy

  validates :title, presence: true, uniqueness: true
end
