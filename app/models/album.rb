class Album < ApplicationRecord
  has_many :sketches, dependent: :destroy

  validates :title, :began_at, :ended_at
end
