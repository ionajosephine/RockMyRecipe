class IngredientsController < ApplicationController
  before_action :find_ingredient, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_contributor!, except: [:index, :show]

  def index
    @ingredients = Ingredient.all
  end

  def show
    @ingredient
  end

  def new
    @ingredient = Ingredient.new
  end

  def create
    @ingredient = Ingredient.new(ingredient_params)

    if @ingredient.save
      redirect_to @ingredient
      flash[:notice] = "Ingredient created successfully"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @ingredient
  end

  def update
    if @ingredient.update(ingredient_params)
      flash[:notice] = "Ingredient updated successfully"
      redirect_to @ingredient
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @ingredient.destroy
    redirect_to root_path
  end
  
  private

    def ingredient_params
      params.require(:ingredient).permit(:name)
    end

    def find_ingredient
      @ingredient = Ingredient.find(params[:id])
    end

end