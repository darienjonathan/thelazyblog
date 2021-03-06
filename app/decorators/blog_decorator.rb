class BlogDecorator < Draper::Decorator
  include Draper::LazyHelpers
  delegate_all

  def add_content
    content = object.content.gsub(/image\[\d\]/){|i| render "partials/blogs/image", image: object.content_images[i[6].to_i]}.gsub("^image","")
    content.gsub(/header\[\d\]/){|i| render "partials/blogs/header", blog: object, header_image: object.header_images.where(title: false)[i[7].to_i]}.gsub(/^header/,"")
  end

  def column_class_name
    class_name = "small-12 large-4 columns"
    class_name = object.id == 1 ? "#{class_name} end" : class_name
  end

  def render_lang_table
    render "partials/blogs/lang_table", lang: object.lang unless object.lang.nil?
  end

  def get_background
    header_image = object.header_images[0]
    if header_image
      "background-image: url(#{asset_path header_image.url}); background-position: #{header_image.bg_pos_sp};"
    end
  end

  def creation_date
    object.created_at.strftime("%A, %d %B %Y")
  end

  def link
    link_to "Read More・続きを読む", blog_path(permalink: object[:permalink]), class: "read-more"
  end

end
