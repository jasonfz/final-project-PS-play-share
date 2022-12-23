class CreateGames < ActiveRecord::Migration[7.0]
  def change
    create_table :games do |t|
      t.string :title
      t.string :image_url
      t.text :description
      t.integer :suggested_rental_price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
