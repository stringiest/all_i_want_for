class GiftsController < ApplicationController
  before_action :find_list
  
  def index
    @gifts = Gift.all
  end

  def new
    @gift = Gift.new
  end

  # def create
  #   @gift = @list.gifts.create(gift_params)
    
  #   respond_to do |format|
  #     format.js
  #   end
  # end

  def create
    @gift = Gift.new(user_id: session[:user_id], list_id: session[:list_id], name: params[:gift][:name], 
                    url: params[:gift][:url], notes: params[:gift][:notes])
    if @gift.save
      redirect_to lists_url
    else
      render 'new'
    end
  end

  def edit; end

  def update
    if @gift.update(gift_params)
      redirect_to lists_url
    else
      render 'edit'
    end
  end

  def destroy
    @gift = @list.gifts.find(params[:id])
    @gift.destroy
    redirect_to lists_url
  end

  private

  def gift_params
    params.require(:gift).permit(:name, :url, :age).merge(user_id: params[:user_id])
  end

  def find_list
    @list = List.find_by(id: params[:list_id])
  end
end
