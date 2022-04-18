class BlogsController < ApplicationController
  before_action :find_blog, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_contributor!, except: [:index, :show]

  def index
    @blogs = Blog.all
  end

  def show
    @blog
  end

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new(blog_params)
    @blog.contributor = current_contributor


    if @blog.save
      redirect_to @blog
      flash[:notice] = "Blog post created successfully"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @blog
  end

  def update
    if @blog.update(blog_params)
      flash[:notice] = "Blog post updated successfully"
      redirect_to @blog
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @blog.destroy
    redirect_to root_path
  end
  
  private

    def blog_params
      params.require(:blog).permit(:body, :title, :contributor_id)
    end

    def find_blog
      @blog = Blog.find(params[:id])
    end

end