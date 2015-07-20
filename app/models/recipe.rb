class Recipe < ActiveRecord::Base
  belongs_to :cuisine
  belongs_to :food_preference
  belongs_to :food_type

end
