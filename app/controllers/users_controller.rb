class UsersController < ApplicationController
   # before_action :user_is_current_user, only: [:edit, :update, :show]
  def mentees
    role_ids = Role.where(name: ["Both", "Mentee"]).ids
    @users = User.where(role_id: role_ids)
   
    render :index
  end

  def mentors
    role_ids = Role.where(name: ["Both", "Mentor"]).ids
    @users = User.where(role_id: role_ids)

    render :index
  end

  def index


  end

  def welcome

  end

  def show

  @user = User.find(params["id"])

  end

  def new
    @user = User.new
    @industries = Industry.all
    @skills = Skill.all
    @roles = Role.all
  end

  def create
   
    @user = User.new(user_params)
    @roles = Role.all

    if @user.save
      login!(@user)
      redirect_to edit_user_path(@user)
    else
      render :new
    end
  end

  def edit
    @industries = Industry.all
    @skills = Skill.all
    @avails = Availability.all
    @locations = Location.all
    @roles = Role.all

    if current_user.id != params[:id].to_i
      redirect_to user_path(current_user)
      @user = current_user
    else
      @user = current_user
   end

  end

  def update
 
    @industries = Industry.all
    @skills = Skill.all
    @avails = Availability.all
    @locations = Location.all
    @roles = Role.all

    if current_user.id != params[:id].to_i
      redirect_to user_path(current_user)
    else
      @user = current_user
       skills = params["user"]["skill_ids"]
       @user.skill_ids = skills
      @user.update(profile_params)
    end
    
    render :show
  end

  def delete
    user = User.find(parms["id"])
    user.destroy
  end

  def about
  end

  def contact
  end

  def testimonials
  end

  def forgot
  end


  private


  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :role_id, :industry_id)
  end

  def profile_params
    params.require(:user).permit(:password, :password_confirmation, :location_id, :availability_id, :role_id, :bio, :name, :title, :email, :years_experience, :industry_id, :img_url, :fun_fact, :interests)
    
  end

  def user_is_current_user
    redirect_to new_session_path
  end

end