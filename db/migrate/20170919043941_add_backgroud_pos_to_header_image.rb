class AddBackgroudPosToHeaderImage < ActiveRecord::Migration[5.1]
  def change
    add_column :header_images, :bg_pos_pc, :string, default: "center center"
    add_column :header_images, :bg_pos_sp, :string, default: "center center"
  end
end
