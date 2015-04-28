class AddTagToStyle < ActiveRecord::Migration
  def change
    add_column :styles, :tag, :boolean
  end
end
