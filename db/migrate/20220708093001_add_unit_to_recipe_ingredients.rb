class AddUnitToRecipeIngredients < ActiveRecord::Migration[7.0]
  def change
    add_column :recipe_ingredients, :unit, :text, null: false
  end
end
