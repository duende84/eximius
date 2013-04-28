class Post < ActiveRecord::Base
  attr_accessible :content, :date, :title

  validates :title, presence: true, length: { maximum: 50 }
  validates :content, presence: true
  validates :date, presence: true
end
