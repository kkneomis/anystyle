class CreateStyles < ActiveRecord::Migration
  def change
    create_table :styles do |t|
      t.string :name
      t.text :description
      t.string :image1
      t.string :image2
      t.string :image3
      t.string :image4
      t.string :poster_id
      t.string :stylist_id

      t.timestamps
    end
  end
end
