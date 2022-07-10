class RecipesController < ApplicationController
  before_action :find_recipe, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_contributor!, except: [:index, :show]
  before_action :authorise_contributor!, only: [:edit, :update, :destroy]

  def index
    @recipes = Recipe.all
  end

  def show
    @recipe
    @likes = @recipe.likes_count
    @like = Like.find_or_initialize_by(recipe: @recipe, contributor: current_contributor)
  end

  def new
    @recipe = Recipe.new
    3.times { @recipe.instructions.build }
    @recipe.ingredients.build
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.contributor = current_contributor

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
      params.require(:recipe).permit(
        :title, :contributor_id, :description, 
        ingredients_attributes: [ :name, :id ],
        instructions_attributes: [ :directions, :id ]
        )
    end

    def find_recipe
      @recipe = Recipe.find(params[:id])
    end

    def authorise_contributor!
      if current_contributor != @recipe.contributor
        flash[:alert] = "You are not the contributor for this recipe!"
        redirect_to @recipe
        return
      end
    end
end