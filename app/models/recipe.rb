class Recipe < ApplicationRecord
  validates :title, presence: true, uniqueness: true
end
