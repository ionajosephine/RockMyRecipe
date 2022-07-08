class RecipeIngredientsController < ApplicationController

  def create
  end

def recipe_params
  params.require(:recipe_ingredient).permit(:recipe_id, :ingredient_id)
end

end