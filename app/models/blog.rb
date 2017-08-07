class Blog < ApplicationRecord
  has_many :comments
  has_many :content_images
  has_many :header_images

  def meta_tag
    header_image = self.header_images.first
    meta_tag = {
      title: self.title,
      description: self.summary.gsub(/<br>/,"").gsub(/\s{2,}/," ")
    }
    if header_image.nil?
      meta_tag[:og_title] = self.title
    else
      meta_tag[:og_title] = header_image.caption.gsub(/<br>/," ")
      meta_tag[:image] = header_image
    end
    meta_tag
  end

end