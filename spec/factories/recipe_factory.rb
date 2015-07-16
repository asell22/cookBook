FactoryGirl.define do
  factory :recipe do
    name "Example Recipe"
    ingredients "Example Ingredients"
    procedure "Example Procedure"
    servings 1
    cooking_time "10-15 min."
    level_of_difficulty "Simple"
  end
end
