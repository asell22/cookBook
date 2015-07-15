class Recipe < ActiveRecord::Base
  validates :name, :ingredients, :procedure, :servings, :level_of_difficulty, :cooking_time,  presence: true
end
