class CreateHeaderImages < ActiveRecord::Migration[5.1]
  def change
    create_table :header_images do |t|
      t.boolean :title, default: false
      t.string :url
      t.string :caption
      t.references :blog
    end
  end
end
