class AddPermalinkToBlogs < ActiveRecord::Migration[5.1]
  def change
    add_column :blogs, :permalink, :string, null: false
    add_index :blogs, :permalink
  end
end
