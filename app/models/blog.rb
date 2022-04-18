class Blog < ApplicationRecord
  belongs_to :contributor
  has_rich_text :body
  validates :title, presence: true, uniqueness: true
end
