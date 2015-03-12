class SessionsController < ApplicationController
  before_action :require_current_user, only: :destroy

  def new
    # when we use form_for @user, it will infer automatically
    # to try to post to users#create because User.new has not
    # persisted, yet.  We'll need to override this in our form
    if current_user 
      redirect_to user_path(current_user) 
    end
      @user = User.new
  end

  def create
    # login the user, then redirect to content

    @user = User.find_by(email: session_params[:email])

    if @user && @user.authenticate(session_params[:password])
     login!(@user)
      
      if @user.find_by(mentor_type: nil)
         redirect_to user_path(@user)
      else
        render :edit
      end
    else
      render :new
    end
  end

  def destroy
    logout!
    redirect_to new_session_url
  end

  private

  def session_params
    @session_params ||= params.require(:session).permit(:email, :password)
  end

end

