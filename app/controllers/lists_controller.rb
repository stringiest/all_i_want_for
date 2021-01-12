class ListsController < ApplicationController

  def index
    @lists = List.all
  end

  def show
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(user_id: session[:user_id], name: params[:list][:name], event_date: params[:list][:event_date], archived: false)
    if @list.save
      redirect_to lists_url
    else
      render 'new'
    end
  end
end
