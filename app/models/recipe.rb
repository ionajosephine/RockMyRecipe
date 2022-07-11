class Recipe < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  validates :description, presence: true
  belongs_to :contributor, counter_cache: true
  has_many :ingredients
  has_many :instructions
  accepts_nested_attributes_for :ingredients
  accepts_nested_attributes_for :instructions
  has_many :comments, :dependent => :destroy
end
