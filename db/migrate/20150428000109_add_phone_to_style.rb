class AddPhoneToStyle < ActiveRecord::Migration
  def change
    add_column :styles, :phone, :string
  end
end
