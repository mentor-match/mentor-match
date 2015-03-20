class FiltersController < ApplicationController

def new
   @user = current_user

   @industries = Industry.all
    @skills = Skill.all
    @avails = Availability.all
    @locations = Location.all
 end

 def create
 end

 def index
  @user = current_user
  @filters = filter_results
  @users = User.all
 end

 def update
    # industry = params["industry_id"].to_i
    # avail = params["availability_id"].to_i
    # skills = params["skill_id"]
    # s = skills.map do |x|
    #     x.to_i
    #   end
    # location = params["job_location_id"].to_i

    # filter_results = User.where(availability_id: avail, industry_id: industry, skill_id: s, job_location_id: location)
     render :index
 end

end

