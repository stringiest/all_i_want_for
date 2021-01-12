# frozen_string_literal: true

class ListsController < ApplicationController
  before_action :find_list, only: %i[edit update destroy]

  def index
    @lists = List.all
  end

  def show; end

  def new
    @list = List.new
  end

  def create
    @list = List.new(user_id: session[:user_id], name: params[:list][:name], event_date: params[:list][:event_date],
                     archived: false)
    if @list.save
      redirect_to lists_url
    else
      render 'new'
    end
  end

  def edit; end

  def update
    if @list.update(list_params)
      redirect_to lists_url
    else
      render 'edit'
    end
  end

  def destroy
    @list.destroy
    redirect_to lists_url
  end

  private

  def find_list
    @list = List.find(params[:id])
  end

  def list_params
    params.require(:list).permit(:name, :event_date)
  end
end
