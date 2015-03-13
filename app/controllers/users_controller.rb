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
    @industries = Industry.all
    @skills = Skill.all
  end

  def create
    @user = User.new( user_params )

    if @user.save
      login!(@user)
      redirect_to edit_user_path(@user)
    else
      render :new
    end
  end

  def edit
    @user = current_user
    @industries = Industry.all
    @skills = Skill.all
    @avails = Availability.all
    @locations = Location.all

  end

  def update
    if current_user.id != params[:id].to_i
      redirect_to user_path(current_user)
    else
    @user = current_user
    skills_array = params["user"]["skill_id"]
    @user.update(skill_id: skills_array ) 
    @user.update(profile_params)
   end
    redirect_to new_filters_url
  end


  private


  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :mentor_type, :industry_id)
  end

  def profile_params
    params.require(:user).permit(:password, :password_confirmation, :job_location_id, :availability_id, :mentor_type, :bio, :name, :title, :email, :years_experience, :industry_id, :fun_fact)
  end

  def user_is_current_user
    redirect_to new_session_path
  end

end