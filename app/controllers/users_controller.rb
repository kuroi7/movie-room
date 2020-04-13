class UsersController < ApplicationController
  def show
    @user = User.find(current_user)
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

  private

  def user_params
    params.require(:user).permit(:name, :email, :introduction, :profile_img)
  end
end
