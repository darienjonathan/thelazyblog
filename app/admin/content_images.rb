ActiveAdmin.register ContentImage do

  permit_params :url, :caption, :blog_id

  index do
    column :id
    column :caption
    column :blog
    column :thumb do |content_image|
      image_tag content_image.url.thumb
    end
    actions
  end

end
