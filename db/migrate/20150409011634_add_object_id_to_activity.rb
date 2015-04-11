class AddObjectIdToActivity < ActiveRecord::Migration
  def change
    add_column :activities, :object_id, :integer
  end
end
