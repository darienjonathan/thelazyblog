module BlogsHelper
  
  GRID_NUM = 3

  def css_file blog
    title_snakecase = blog.title.downcase.gsub(/\s/, "_")
    "site/#{title_snakecase}"
  end

  def add_content blog
    content = blog.content.gsub(/image\[\d\]/){|i| render "partials/blog_image", image: blog.content_images[i[6].to_i]}.gsub("^image","")
    content.gsub(/header\[\d\]/){|i| render "partials/blog_header", blog: blog, header_image: blog.header_images.where(title: false)[i[7].to_i]}.gsub(/^header/,"")
  end

  def index_grid_box blog
    arr = Array.new
    pages = (blog.length/GRID_NUM.to_f).ceil - 1
    if true
      for i in pages.downto(0) do
        arr << render("partials/grid_box", blogs: blog[i*GRID_NUM..i*GRID_NUM+(GRID_NUM-1)])
      end
    end
    arr.join("")
  end

end
