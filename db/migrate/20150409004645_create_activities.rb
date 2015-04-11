class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.integer :actor_id
      t.string :action
      t.integer :receiver_id

      t.timestamps
    end
  end
end
