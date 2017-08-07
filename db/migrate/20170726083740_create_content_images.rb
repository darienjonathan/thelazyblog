class CreateContentImages < ActiveRecord::Migration[5.1]
  def change
    create_table :content_images do |t|
      t.string :url
      t.string :caption
      t.string :class_attr, default: "normal-img"
      t.references :blog
    end
  end
end