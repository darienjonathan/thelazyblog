class CreateBlogs < ActiveRecord::Migration[5.1]
  def change
    create_table :blogs do |t|
      t.string :title
      t.string :tag
      t.text :summary
      t.text :content
      t.integer :stars, default: 0
      t.timestamps
      t.index :title
      t.index :tag
    end
  end
end