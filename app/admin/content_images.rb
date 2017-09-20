ActiveAdmin.register ContentImage do

  permit_params :url, :caption, :blog_id, :class_attr

  index do
    column :id
    column :caption
    column :blog
    column :thumb do |content_image|
      image_tag content_image.url.thumb
    end
    actions
  end

  show do
    attributes_table do
      row :id
      row :caption
      row :blog
      row "Thumbnail" do
        image_tag resource.url.thumb
      end
      row "Image Class" do
        resource.class_attr
      end
    end
  end

  form do |f|
    inputs do
      input :blog
      input :url
      input :caption
      input :class_attr, label: "Image Class", as: :radio, collection: ContentImage::IMG_CLASS_ARRAY
    end
    actions
  end

end
