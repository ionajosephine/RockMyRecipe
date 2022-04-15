class AddDescriptionToRecipe < ActiveRecord::Migration[7.0]
  def change
    add_column :recipes, :description, :text, null: false
  end
end
