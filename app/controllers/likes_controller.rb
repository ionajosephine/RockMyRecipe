class LikesController < ApplicationController

  before_action :authenticate_contributor!

  def create
    recipe = Recipe.find(params[:recipe_id])

    like = Like.new(contributor: current_contributor, recipe: recipe)

    if like.save
      flash[:notice] = "Your like was added"
    else
      flash[:alert] = "You've already liked this!"
    end
    redirect_to recipe_path(recipe)

  end

  def destroy
    like = Like.find(params[:id])
    recipe = like.recipe
    if like.contributor == current_contributor
      like.destroy
      flash[:notice] = "You've unliked successfully"
    else
      flash[:alert] = "That's not your like!"
    end
    redirect_to recipe_path(recipe)
  end
  

end
