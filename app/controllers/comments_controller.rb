class CommentsController < ApplicationController

  before_action :authenticate_contributor!, except: [:index, :show]
  before_action :find_comment, only: :destroy
  before_action :authorise_contributor!, only: :destroy

  def create
    @recipe = Recipe.find(params[:recipe_id])
    @comments = @recipe.comments.all
    @comment = @recipe.comments.new(comment_params)
    @comment.contributor = current_contributor

    if @comment.save
      redirect_to @recipe
    else
      @like = Like.find_or_initialize_by(recipe: @recipe, contributor: current_contributor)
      render :"recipes/show"
    end
  end

  def destroy
    recipe = @comment.recipe
    @comment.destroy
    redirect_to recipe_path(recipe)
  end

  private
  
    def comment_params
      params.require(:comment).permit(:message)
    end

    def find_comment
      @comment = Comment.find(params[:id])
    end

    def authorise_contributor!
      if current_contributor != @comment.contributor
        flash[:alert] = "This was not your comment!"
        redirect_to @comment.recipe 
        return
      end
    end
end