class Instruction < ApplicationRecord
  has_rich_text :steps
  belongs_to :recipe
end
