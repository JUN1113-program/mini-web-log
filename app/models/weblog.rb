class Weblog < ApplicationRecord
  belongs_to :user
  has_many :images
  has_many :comments
  mount_uploader :image, ImageUploader
  validates :content, presence: true
end
