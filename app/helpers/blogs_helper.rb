module BlogsHelper
  
  GRID_NUM = 3

  def add_content blog=self.assigns["blog"]
    content = blog.content.gsub(/image\[\d\]/){|i| render "partials/blog_image", image: blog.content_images[i[6].to_i]}.gsub("^image","")
    content.gsub(/header\[\d\]/){|i| render "partials/blog_header", blog: blog, header_image: blog.header_images.where(title: false)[i[7].to_i]}.gsub(/^header/,"")
  end

  def index_grid_box blogs=self.assigns["blogs"]
    arr = []
    blogs.reverse.each_slice(GRID_NUM){ |blog| arr << render("partials/grid_box", blogs: blog) }
    arr.join("")
  end

  def column_class_name column_num, blogs_num
    class_name = "small-12 large-4 columns"
    class_name = column_num == blogs_num - 1 ? "#{class_name} end" : class_name
  end

end
