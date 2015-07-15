class AddFoodTypeIdToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :food_type_id, :integer
  end
end
