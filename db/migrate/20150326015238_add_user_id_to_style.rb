class AddUserIdToStyle < ActiveRecord::Migration
  def change
    add_column :styles, :user_id, :integer
    add_column :styles, :make_id, :integer
  end
end
