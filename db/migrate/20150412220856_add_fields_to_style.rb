class AddFieldsToStyle < ActiveRecord::Migration
  def change
    add_column :styles, :crop_x, :integer
    add_column :styles, :crop_y, :integer
    add_column :styles, :crop_w, :integer
    add_column :styles, :crop_h, :integer
  end
end
