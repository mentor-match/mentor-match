class UsersController < ApplicationController
   # before_action :user_is_current_user, only: [:edit, :update, :show]

  def welcome
  end

  def show
    if current_user.id != params[:id].to_i
      redirect_to user_path(current_user)
    else
      @user = current_user
      @industries = Industry.all

      @avails = Availability.all
      @locations = Location.all

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


  
 
 industries_array = params["user"]["industry_id"]

#   ind = industries_array.map do |x| 
#      x.to_i
#     end
    
# binding.pry
#    ind.each do |x|
  @user.update(industry_id: industries_array ) 
#   end
   
   @user.update(profile_params)
   # .each do |industry, ty)pe|
        
         
   #      puts type["industry"]
   #    binding.pry
   #    end

    # if @user.authenticate(params[:user][:current_password])
    #   @user.update(password_params)
    #   redirect_to user_messages_url(@user)
    # else
    #   render :edit
    # end
  end


  private


  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

  def profile_params
    params.require(:user).permit(:job_location_id, :availability_id, :mentor_type, :bio, :name, :title, :email, :years_experience, :fun_fact)
  end

  def user_is_current_user
    redirect_to new_session_path
  end

end