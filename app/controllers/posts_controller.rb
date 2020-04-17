class PostsController < ApplicationController
  def index
    @posts = Post.includes(:user)
  end

  def new
    @movie_id = params[:id]
    @title = params[:title]
    @poster_path = params[:poster_path]

    @post = Post.new
  end

  def create
    Post.create(post_params)
    redirect_to user_path(current_user)
  end

  def show    
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    post = Post.find(params[:id])
    post.update(post_params)
    redirect_to user_path(current_user)
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    redirect_to user_path(current_user)
  end

  private
  def post_params
    params.require(:post).permit(:title, :content, :poster_path, :movie_id).merge(user_id: current_user.id)
  end
end
