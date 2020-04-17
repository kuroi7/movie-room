class UsersController < ApplicationController
  def index
    @search_term = params[:looking_for]
    movie = @search_term ? Movie.search(@search_term) : Movie.index
    @movie_results = movie["results"]
    # 自分以外のユーザーを取得。全ユーザー取得なら User.all
    @users = User.where.not(id: current_user.id)
  end

  def show
    @user = User.find(params[:id])
    @posts = @user.posts
  end

  def edit
  end

  def update
    if current_user.update(user_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def following
    @title = "フォロー"
    @user = User.find(params[:id])
    @users = @user.followings
    render 'show_follow'
  end

  def followers
    @title = "フォロワー"
    @user = User.find(params[:id])
    @users = @user.followers
    render 'show_follow'
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :introduction, :profile_img)
  end
end
