class Blog < ApplicationRecord
  belongs_to :contributor, counter_cache: true
  has_rich_text :body
  validates :title, presence: true, uniqueness: true
end
