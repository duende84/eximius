class Post < ActiveRecord::Base
  attr_accessible :content, :date, :title, :image, :remote_image_url

  validates :title, presence: true
  validates :content, presence: true
  validates :date, presence: true

  mount_uploader :image, ImageUploader
end
