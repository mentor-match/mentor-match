class UsersController < ApplicationController
   # before_action :user_is_current_user, only: [:edit, :update, :show]

  def welcome
  end

  def show
    if current_user.id != params[:id].to_i
      redirect_to user_path(current_user)
    else
      @user = current_user
    end
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new( user_params )

    if @user.save
      login!(@user)
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.authenticate(params[:user][:current_password])
      @user.update(password_params)
      redirect_to user_messages_url(@user)
    else
      render :edit
    end
  end


  private


  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

  def password_params
    params.require(:user).permit(:password, :password_confirmation)
  end

  def user_is_current_user
    redirect_to new_session_path
  end

end