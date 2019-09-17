class Weblog < ApplicationRecord
  belongs_to :user
  has_many :images
  has_many :comments, dependent: :destroy
  mount_uploader :image, ImageUploader
  validates :content, presence: true
  validates :title, presence: true
end
