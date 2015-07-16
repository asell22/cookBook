class Recipe < ActiveRecord::Base
  belongs_to :cuisine
  belongs_to :food_preference
  belongs_to :food_type
  validates :name, :ingredients, :procedure, :servings, :cooking_time, :level_of_difficulty, presence: true
end
