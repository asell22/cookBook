class Recipe < ActiveRecord::Base
  belongs_to :cuisine
  belongs_to :food_preference
  belongs_to :food_type
  has_many :comments

  scope :dairyfree, -> (dairyfree){where food_preference_id: 1}
  scope :vegan, -> (vegan){where food_preference_id: 2 }
  scope :vegetarian, -> (vegetarian){where food_preference_id: 3 }
  scope :meat, -> (meat){where food_preference_id: 4 }
  scope :preferenceother, -> (preferenceother){where food_preference_id: 5}
  scope :maincourse, -> (maincourse){where food_type_id: 1}
  scope :sidedish, -> (sidedish){where food_type_id: 2}
  scope :dessert, -> (dessert){where food_type_id: 3}
  scope :breakfast, -> (breakfast){where food_type_id: 4}
  scope :beverage, -> (beverage){where food_type_id: 5}
  scope :typeother, -> (typeother){where food_type_id: 6}
  scope :french, -> (french){where cuisine_id: 1}
  scope :italian, -> (french){where cuisine_id: 2}
  scope :chinese, -> (chinese){where cuisine_id: 3}
  scope :indian, -> (indian){where cuisine_id: 4}
  scope :thai, -> (thai){where cuisine_id: 5}
  scope :mexican, -> (mexican){where cuisine_id: 6}
  scope :japanese, -> (japanese){where cuisine_id: 7}
  scope :spanish, -> (spanish){where cuisine_id: 8}
  scope :greek, -> (greek){where cuisine_id: 9}
  scope :lebanese, -> (lebanese){where cuisine_id: 10}
  scope :american, -> (american){where cuisine_id: 11}
  scope :cuisineother, -> (cuisineother){where cuisine_id: 12}

  def self.search(search)
    where("name ILIKE ?", "%#{search}%")
  end
end
