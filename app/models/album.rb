class Album < ApplicationRecord
  has_many :sketches, dependent: :destroy

  validates :title, :description, :began_at, :ended_at, presence: true
end
