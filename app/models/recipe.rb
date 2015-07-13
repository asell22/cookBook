class Recipe < ActiveRecord::Base
  validates :name, :ingredients, presence: true
end
