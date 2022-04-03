class UsersController < ApplicationController

  # ログイン済みユーザーのみアクセス可能にする
  before_action :authenticate_user!, only: [:show]
  before_action :correct_user, only: [:show]

  def show
    @user = User.find(params[:id])
    @destinations = @user.destinations.limit(3)
  end

    private
    def correct_user
      user = User.find(params[:id])
      unless user == current_user
        flash[:alert] = "権限がありません"
        redirect_to root_path
      end
    end

    
end
