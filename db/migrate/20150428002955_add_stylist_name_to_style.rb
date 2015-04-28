class AddStylistNameToStyle < ActiveRecord::Migration
  def change
    add_column :styles, :stylist_name, :string
  end
end
