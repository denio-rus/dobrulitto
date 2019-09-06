class Comment < ApplicationRecord
  belongs_to :commentable, polymorphic: true
  belongs_to :user
  has_many :answers, class_name: "Comment", foreign_key: 'branch_id'
  belongs_to :branch, class_name: "Comment", optional: true

  validates :body, presence: true
end
