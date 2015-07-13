class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.integer :servings
      t.string :cooking_time
      t.string :level_of_difficulty
      t.string :ingredients
      t.string :procedure

      t.timestamps null: false
    end
  end
end
