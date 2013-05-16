# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  content    :text
#  date       :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  image      :string(255)
#  author_id  :integer
#

class Post < ActiveRecord::Base
  attr_accessible :content, :date, :title, :image, :remote_image_url, :author, :author_id

  belongs_to :author, class_name: 'User'

  validates :title, presence: true
  validates :content, presence: true
  validates :date, presence: true

  mount_uploader :image, ImageUploader
end
