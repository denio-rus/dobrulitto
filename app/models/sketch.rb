class Sketch < ApplicationRecord
  belongs_to :album
  has_many :specifications, as: :specificable, dependent: :destroy
  has_many :materials, through: :specifications

  validates :title, :description, :date, presence: true
  validate :validate_date_is_between_dates_of_album

  accepts_nested_attributes_for :specifications, reject_if: :all_blank, allow_destroy: true

  has_one_attached :picture

  private

  def validate_date_is_between_dates_of_album
    if date.present?  && ((date < album.began_at) || (date > album.ended_at)) 
      errors.add(:date, "is not in range of album's period")
    end
  end
end
