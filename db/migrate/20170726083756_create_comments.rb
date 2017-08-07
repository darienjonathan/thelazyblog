class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :name
      t.references :blog
      t.text :comment
      t.timestamps
    end
  end
end
