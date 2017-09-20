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

  form do |f|
    inputs do
      input :blog
      input :title if f.object.title || f.object.class.where(blog_id: f.object.blog_id, title: true).empty?
      input :url
      input :caption
      input :bg_pos_pc, label: "Background Position (Desktop)",
        input_html: { placeholder: "Don't change this unless you know what you're doing (i.e. you know CSS) " } if f.object.new_record? || f.object.title == true
      input :bg_pos_sp, label: "Background Position (Smartphone)",
        input_html: { placeholder: "Don't change this unless you know what you're doing (i.e. you know CSS) " } if f.object.new_record? || f.object.title == true
    end
    actions
  end

end
