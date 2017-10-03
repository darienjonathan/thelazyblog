ActiveAdmin.register ContentImage do

  # belongs_to :blog
  belongs_to :blog, optional: true
  menu parent: "Images"

  # scope_to do
  #   Blog.last
  # end

  permit_params :url, :caption, :blog_id, :class_attr

  index do
    column :id
    column :blog
    column :thumb do |content_image|
      image_tag content_image.url.thumb
    end
    column :caption
    actions
  end

  index as: :grid do |content_image|
    link_to image_tag(content_image.url.thumb), admin_content_image_path(content_image)
  end

  show do
    attributes_table do
      row :id
      row :blog
      row "Thumbnail" do
        image_tag resource.url.thumb
      end
      row "Image Class" do
        resource.class_attr
      end
      row :caption
    end
  end

  form do |f|
    f.semantic_errors *f.object.errors.keys
    inputs do
      input :blog
      input :url
      input :caption
      input :class_attr, label: "Image Class", as: :radio, collection: ContentImage::IMG_CLASS_ARRAY
    end
    actions
  end

end
