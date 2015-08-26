class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.string :title
      t.string :subtitle
      t.string :domain
      t.string :subdomain
      t.integer :level
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.integer :headercarousel
      t.string :welcomemessage
      t.integer :services
      t.integer :reviews
      t.integer :reservations
      t.integer :styles
      t.string :backgroundcolor
      t.string :textcolor
      t.string :hightlightcolor

      t.timestamps
    end
  end
end
