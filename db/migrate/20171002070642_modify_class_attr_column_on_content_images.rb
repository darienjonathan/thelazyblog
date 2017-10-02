class ModifyClassAttrColumnOnContentImages < ActiveRecord::Migration[5.1]
  def change
    change_column_null :content_images, :class_attr, false
  end
end
