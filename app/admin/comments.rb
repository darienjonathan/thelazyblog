ActiveAdmin.register Comment, as: "Blog Comments" do

  belongs_to :blog

  permit_params :id, :name, :comment

  index do
    column :id
    column :name
    column :comment do |c|
      c.comment.to_s.truncate(40, omission: '…')
    end
    column :blog
    actions
  end

  show do
    attributes_table do
      row :id
      row :name
      row :comment
    end
  end

end
