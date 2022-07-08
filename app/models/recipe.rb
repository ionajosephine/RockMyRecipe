class Recipe < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  validates :description, presence: true
  belongs_to :contributor, counter_cache: true
  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients
  has_many :instructions
  accepts_nested_attributes_for :ingredients
  accepts_nested_attributes_for :recipe_ingredients
  accepts_nested_attributes_for :instructions
end
