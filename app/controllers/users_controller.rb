class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @destinations = @user.destinations.limit(3)
  end
end
