class RemoveJoinTableRecipeIngredients < ActiveRecord::Migration[7.0]
  def change
    remove_column :recipe_ingredients, :unit, :text, null: false
    remove_column :recipe_ingredients, :qty, :integer, null: true
    drop_table :recipe_ingredients
  end
end
