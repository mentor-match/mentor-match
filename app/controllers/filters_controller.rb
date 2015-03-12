class FiltersController < ApplicationController

def new
   @user = current_user

 end

 def create

 end

 def index
  @user = current_user

  @users = User.all
   
 end
end
