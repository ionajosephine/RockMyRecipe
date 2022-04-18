class Recipe < ApplicationRecord
  has_rich_text :instructions
  validates :title, presence: true, uniqueness: true
  validates :description, presence: true
  validates :instructions, presence: true
  belongs_to :contributor, counter_cache: true
  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients
end
