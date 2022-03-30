class RecipesController < ApplicationController
  before_action :find_recipe, only: [:show, :edit, :update, :destroy]

  def index
    @recipes = Recipe.all
  end

  def show
    @recipe
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      redirect_to @recipe
      flash[:notice] = "Recipe created successfully"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @recipe
  end

  def update
    if @recipe.update(recipe_params)
      flash[:notice] = "Recipe updated successfully"
      redirect_to @recipe
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @recipe.destroy
    redirect_to root_path
  end
  
  private

    def recipe_params
      params.require(:recipe).permit(:title)
    end

    def find_recipe
      @recipe = Recipe.find(params[:id])
    end
end