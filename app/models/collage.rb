class Collage < ActiveRecord::Base
  attr_accessible :author, :title

  validates :title, presence: true
end
