class AddPositionToStyle < ActiveRecord::Migration
  def change
    add_column :styles, :position, :string
  end
end
