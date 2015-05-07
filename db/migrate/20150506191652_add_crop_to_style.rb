class AddCropToStyle < ActiveRecord::Migration
  def change
    add_column :styles, :crop, :boolean
  end
end
