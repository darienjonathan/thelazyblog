ActiveAdmin.register Blog do

  permit_params :id, :title, :summary, :tag, :stars, :content, :created_at, :lang => []

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
    actions
  end

end
