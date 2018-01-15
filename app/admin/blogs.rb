ActiveAdmin.register Blog do

  permit_params :id, :title, :summary, :tag, :stars, :content, :created_at, :lang => [],
    header_images_attributes: [:id, :title, :url, :caption, :bg_pos_pc, :bg_pos_sp, :_destroy],
    content_images_attributes: [:url, :caption, :blog_id, :class_attr, :_destroy]

  index do
    column :id
    column :title
    column :tag
    column :stars
    column :lang
    column :link do |blog|
      link_to 'view blog', blog_path(blog)
    end
    column "Content Images" do |blog|
      link_to "view", admin_blog_content_images_path(blog.id)
    end
    column "Header Images" do |blog|
      link_to "view", admin_blog_header_images_path(blog.id)
    end
    column "Comments" do |blog|
      link_to "view", admin_blog_blog_comments_path(blog.id)
    end
    actions
  end

  show do
    attributes_table do
      row :title
      row :tag
      row :summary
      row :content
      row :stars
      row :created_at
      row "Language" do
        resource.lang
      end
    end
  end

  form do |f|
    f.semantic_errors *f.object.errors.keys

    inputs do
      input :title
      input :tag
      input :summary
      input :content
      input :created_at
      input :lang, as: :check_boxes, label: "Language", collection: Blog::LANG_ARRAY
    end
    if f.object.new_record?
      f.inputs do
        f.has_many :header_images, heading: "Header Images", allow_destroy: true do |hi|
          hi.input :title
          hi.input :url
          hi.input :caption
          hi.input :bg_pos_pc, label: "Background Position (Desktop)",
            input_html: { placeholder: "Don't change this unless you know what you're doing (i.e. you know CSS) " }
          hi.input :bg_pos_sp, label: "Background Position (Smartphone)",
            input_html: { placeholder: "Don't change this unless you know what you're doing (i.e. you know CSS) " }
        end
      end
      f.inputs do
        f.has_many :content_images, heading: "Content Images", allow_destroy: true do |ci|
          ci.input :url
          ci.input :caption
          ci.input :class_attr, label: "Image Class", as: :radio, collection: ContentImage::IMG_CLASS_ARRAY
        end
      end
    end
    actions
  end

end
