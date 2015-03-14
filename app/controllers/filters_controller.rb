class FiltersController < ApplicationController
attr_reader :filter_results
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
   binding.pry
  @user = current_user
  @filter_results
  @users = User.all


   
 end

 def update
    # binding.pry
    filter_results(params)
    industry = params["filter"]["industry_id"].to_i
    avail = params["filter"]["availability_id"].to_i
    skills = params["filter"]["skill_id"]
    location = params["filter"]["job_location_id"]

   @filter_results = User.where(availability_id: avail, industry_id: industry, skill_id: skills, job_location_id: location)

     render :index
 end

 def mentors
   binding.pry
 end

 def mentees
   binding.pry

 end

end

