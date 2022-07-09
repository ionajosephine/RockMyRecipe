class AddDirectionsToInstructions < ActiveRecord::Migration[7.0]
  def change
    add_column :instructions, :directions, :text, null: false
  end
end
