class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      flash[:notice] = 'Successfully signed up'
      redirect_to root_path # temporary redirect until sessions set up, then use below redirect
      # redirect_to new_session_url
    else
      render 'new'
    end
  end

  def welcome
    @user = params[:username]
    render :welcome
  end

  private

  def user_params
    params.require(:user).permit(
      :username,
      :email,
      :password,
      :password_confirmation,
      :birthdate
    )
  end
end
