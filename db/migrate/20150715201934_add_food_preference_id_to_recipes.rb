class AddFoodPreferenceIdToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :food_preference_id, :integer
  end
end
