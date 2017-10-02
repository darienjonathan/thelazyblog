class ModifyBackgroundPositionColumnsOnHeaderImages < ActiveRecord::Migration[5.1]
  def change
    change_column_null :header_images, :bg_pos_pc, false
    change_column_null :header_images, :bg_pos_sp, false
  end
end
