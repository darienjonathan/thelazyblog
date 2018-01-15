ActiveAdmin.register Comment, as: "Blog Comments" do

  permit_params :id, :name, :comment

  index do
    column :id
    column :name
    column :comment
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
