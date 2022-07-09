class RecipesController < ApplicationController
  before_action :find_recipe, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_contributor!, except: [:index, :show]
  before_action :authorise_contributor!, only: [:edit, :update, :destroy]

  def index
    @recipes = Recipe.all
  end

  def show
    @recipe
   # @ingredient = @recipe.ingredients.all
   # @recipe_ingredient = @recipe.recipe_ingredient.all
    @instruction = @recipe.instructions.all
  end

  def new
    @recipe = Recipe.new
    3.times { @recipe.instructions.build }
    #@ingredient = Ingredient.new
    #@recipe_ingredient = RecipeIngredient.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.contributor = current_contributor

    # @instruction = Instruction.new(recipe: @recipe, directions: recipe_params([:instructions_attributes]))
    # @ingredient = Ingredient.new(recipe_params[:ingredient_attributes])
    # @recipe_ingredient = RecipeIngredient.new(recipe: @recipe, ingredient: @ingredient)

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
        ingredient_attributes: [ :name ],
        recipe_ingredient_attributes: [ :recipe_id, :ingredient_id, :unit, :qty ],
        instructions_attributes: [ :directions ]
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