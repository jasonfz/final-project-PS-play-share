class CreateRentals < ActiveRecord::Migration[7.0]
  def change
    create_table :rentals do |t|
      t.string :title
      t.string :image_url
      t.text :description
      t.integer :rental_price
      t.integer :rental_time
      t.references :user, null: false, foreign_key: true
      t.references :game, null: false, foreign_key: true


      t.timestamps
    end
  end
end
