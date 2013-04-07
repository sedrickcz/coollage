class Collage < ActiveRecord::Base
  attr_accessible :author, :title, :selected_images
  attr_accessor :selected_images
  validates :title, presence: true

  after_save :generate_collage

  def generate_collage
    selected_images = self.selected_images.split('-')
    images = []
    selected_images.each do |img|
      image = Image.where(id: img).first
      if image
        file = image.image.file.file 
        i = Magick::Image.read(file).first
        images << i.resize_to_fit!(200)
      end
    end
    
    bg = Magick::Image.new(1600, 1200)
    x = 0
    y = 0
    images.each do |img|
      bg.composite!(img,x,y, Magick::OverCompositeOp)
      x = rand(1400)
      y = rand(1000)
    end
    file_path = "#{Rails.root}/public/images/collage_#{id}.png"
    bg.write(file_path)
  end

  def author_name
    if author.present?
      return author 
    else
      return "Anonymous"
    end
  end
end
