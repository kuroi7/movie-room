class MyRankingsController < ApplicationController
  def index
    @myRanking = MyRanking.where(user_id: current_user.id).rank(:row_order)
  end

  def new
    @myRanking = MyRanking.new
  end

  def create
    MyRanking.create(my_ranking_params)
    redirect_to my_rankings_path
  end

  def edit
    @MyRanking = MyRanking.find(params[:id])
  end

  def update
    myRanking = MyRanking.find(params[:id])
    myRanking.update(my_ranking_params)
    redirect_to my_rankings_path
  end

  def show
    @MyRanking = MyRanking.find(params[:id])
  end

  def destroy
    myRanking = MyRanking.find(params[:id])
    myRanking.destroy
    redirect_to my_rankings_path
  end

  def sort
    myRanking = MyRanking.find(params[:my_ranking_id])
    myRanking.update(my_ranking_params)
    render nothing: true
  end

  private
  def my_ranking_params
    params.require(:my_ranking).permit(:title, :content, :row_order_position).merge(user_id: current_user.id)
  end

end
