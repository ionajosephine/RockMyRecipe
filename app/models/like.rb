class Like < ApplicationRecord
  belongs_to :contributor, counter_cache: true
  belongs_to :recipe, counter_cache: true

  validates :recipe_id, uniqueness: { scope: :contributor_id }
end
