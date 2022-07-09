class AddReferenceToInstructions < ActiveRecord::Migration[7.0]
  def change
    add_reference :instructions, :recipe, null: false, foreign_key: true
  end
end
