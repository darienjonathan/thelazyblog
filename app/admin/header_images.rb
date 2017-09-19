ActiveAdmin.register HeaderImage do

  permit_params :title, :url, :caption, :blog_id, :bg_pos_pc, :bg_pos_sp

  index do
    column :id
    column :title
    column :thumb do |header_image|
      image_tag header_image.url.small
    end
    column :caption
    column :blog
    actions
  end

end
