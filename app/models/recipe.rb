class Recipe < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  validates :description, presence: true
  belongs_to :contributor, counter_cache: true
end
