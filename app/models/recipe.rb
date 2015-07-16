class Recipe < ActiveRecord::Base
  validates :name, :ingredients, :procedure, :servings, :cooking_time, :level_of_difficulty, presence: true
end
