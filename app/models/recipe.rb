class Recipe < ActiveRecord::Base
  validates :name, :ingredients, :procedure,  presence: true
end
