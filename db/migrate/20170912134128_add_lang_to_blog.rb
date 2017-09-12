class AddLangToBlog < ActiveRecord::Migration[5.1]
  def change
    add_column :blogs, :lang, :string
  end
end
