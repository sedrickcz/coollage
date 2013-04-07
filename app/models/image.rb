class Image < ActiveRecord::Base
  attr_accessible :image
  mount_uploader :image, ImageUploader

  validates :image, presence: true

  self.per_page = 10
end
