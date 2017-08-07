ActiveAdmin.register Blog do

  permit_params :id, :title, :tag, :stars, :content

  index do
    column :id
    column :title
    column :tag
    column :stars
    column :link do |blog|
      link_to 'go', blog_path(blog)
    end
    actions
  end
end
