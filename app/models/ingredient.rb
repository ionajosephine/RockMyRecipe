class Ingredient < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  belongs_to :recipe
  # has_many :recipe_ingredients
  # has_many :recipes, through: :recipe_ingredients
end
