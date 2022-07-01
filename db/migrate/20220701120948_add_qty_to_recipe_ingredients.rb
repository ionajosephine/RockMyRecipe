class AddQtyToRecipeIngredients < ActiveRecord::Migration[7.0]
  def change
    add_column :recipe_ingredients, :qty, :integer, null: true
  end
end
