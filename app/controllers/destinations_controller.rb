class DestinationsController < ApplicationController

  def show
    @destination = Destination.find(params[:id])
  end

  def new
    @destination = Destination.new
  end

  def create
    @destination = current_user.destinations.build(destination_params)
    if @destination.save
      flash[:success] = "投稿に成功しました"
      redirect_to root_url
    else
      flash[:notice] = "投稿に失敗しました"
      render 'new'
    end
  end

  def edit
    @destination = Destination.find(params[:id])
  end

  def update
    @destination = Destination.find(params[:id])

    if @destination.update(destination_params)
      flash[:notice] = "目的地を編集しました。"
      redirect_to show
    else 
      flash.now[:notice] = "編集に失敗しました。変更内容を確認してください。"
      render edit
    end
  end

  def destroy
    destination = Destination.find(params[:id])
    destination.destroy
    flash[:notice] = "目的地を削除しました"
    redirect_to root_path
  end
  
  private
  
    def destination_params
      params.require(:destination).permit(:destination, :date, :via1, :via2, :via3, :via4, :via5, :url1, :url2, :url3, :url4, :url5)
    end
    
end
