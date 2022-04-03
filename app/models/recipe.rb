class Recipe < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  belongs_to :contributor, counter_cache: true
end
