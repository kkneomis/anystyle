class AddAddressToStyle < ActiveRecord::Migration
  def change
    add_column :styles, :address, :string
  end
end
