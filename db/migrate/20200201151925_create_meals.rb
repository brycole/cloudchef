class CreateMeals < ActiveRecord::Migration[5.2]
  def change
    create_table :meals do |t|
      t.string :title
      t.text :description
      t.string :category
      t.integer :price
      t.string :cooking_time
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
