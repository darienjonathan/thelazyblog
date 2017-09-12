ActiveAdmin.register Blog do

  permit_params :id, :title, :tag, :stars, :content, :created_at

  index do
    column :id
    column :title
    column :tag
    column :stars
    column :lang
    column :link do |blog|
      link_to 'go', blog_path(blog)
    end
    actions
  end

  form do |f|
    inputs do
      input :title
      input :tag
      input :summary
      input :content
      input :created_at
      input :lang
    end
    actions
  end

end
