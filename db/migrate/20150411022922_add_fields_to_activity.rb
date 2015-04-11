class AddFieldsToActivity < ActiveRecord::Migration
  def change
    add_column :activities, :type, :string
    add_column :activities, :content, :string
  end
end
