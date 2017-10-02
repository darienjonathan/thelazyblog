ActiveAdmin.register HeaderImage do

  belongs_to :blog, optional: true

  menu parent: "Images"

  permit_params :title, :url, :caption, :blog_id, :bg_pos_pc, :bg_pos_sp

  index do
    column :id
    column :blog
    column :title
    column :thumb do |header_image|
      image_tag header_image.url.small
    end
    column :caption do |header_image|
      header_image.caption.gsub("<br>"," ")
    end
    actions
  end

  show title: proc{ |hi| hi.caption.gsub("<br>"," ") } do
    attributes_table do
      row :blog
      row :title
      row "Thumbnail" do
        image_tag resource.url.small
      end
      row :caption
      if resource.title
        row "Background Position (Desktop)" do
          resource.bg_pos_pc
        end
        row "Background Position (Smartphone)" do
          resource.bg_pos_sp
        end
      end
    end
  end

  form do |f|
    title_check = f.object.title || f.object.class.where(blog_id: f.object.blog_id, title: true).empty?
    inputs do
      input :blog if f.object.blog_id.nil?
      input :title if title_check
      input :url
      input :caption
      input :bg_pos_pc, label: "Background Position (Desktop)",
        input_html: { placeholder: "Don't change this unless you know what you're doing (i.e. you know CSS)." } if title_check
      input :bg_pos_sp, label: "Background Position (Smartphone)",
        input_html: { placeholder: "Don't change this unless you know what you're doing (i.e. you know CSS)." } if title_check
    end
    actions
  end

end
