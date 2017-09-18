class HeaderImage < ApplicationRecord
  belongs_to :blog
  mount_uploader :url, HeaderImageUploader

  after_create :test

  HEROLESS_CSS = "@include hero('', '', false);"
  HERO_CSS = "@include hero('center center', 'center center', 100vh);"

  def test
    if title == true && blog.header_images.count == 1
      file = File.open(blog.css_path).to_a
      file[1] = HERO_CSS
      File.open(blog.css_path, "w+"){ |f| f.puts file }
    end
  end

end
