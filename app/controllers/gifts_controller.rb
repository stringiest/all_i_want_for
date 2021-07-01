class GiftsController < ApplicationController
  before_action :find_list
  
  # def index
  #   @gifts = Gift.all
  # end

  def new
    @gift = Gift.new
  end

  def create
      @gift = @list.gifts.create(gift_params)
    if @gift.save
      redirect_to list_path(params[:list_id])
    else
      render 'new'
    end
  end

  def edit; end

  def update
    if @gift.update(gift_params)
      redirect_to list_path(params[:list_id])
    else
      render 'edit'
    end
  end

  def destroy
    @gift = @list.gifts.find(params[:id])
    @gift.destroy
    redirect_to list_path(params[:list_id])
  end

  private

  def gift_params
    params.require(:gift).permit(:name, :url, :image, :notes).merge(user_id: current_user.id)
  end

  def find_list
    @list = List.find_by(id: params[:list_id])
  end
end
