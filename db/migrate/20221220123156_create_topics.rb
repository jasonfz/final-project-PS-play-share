class CreateTopics < ActiveRecord::Migration[7.0]
  def change
    create_table :topics do |t|

      t.string :title
      t.text :body
      t.integer :view_count
      
      t.references :user, null: false, foreign_key: true

      t.references :game, null: false, foreign_key: true

      
      t.timestamps
    end
  end
end
