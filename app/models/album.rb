class Album < ApplicationRecord
  has_many :sketches, dependent: :destroy

  validates :title, :description, :began_at, :ended_at, presence: true
  validate :validate_dates_began_greater_than_ended 

  private

  def validate_dates_began_greater_than_ended 
    if began_at.present? && ended_at.present? && (began_at < ended_at) 
      errors.add(:began_at, 'Wrong dates: began after ended!')
    end
  end
  
end
