class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :weblog
  validates :comment, presence: true
end
