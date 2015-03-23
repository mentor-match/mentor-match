class AuthController < ApplicationController
	def index
		# remember to put these in your bash profile
		 @@apikey = ENV["LINKEDIN_API_KEY"]
		 @@secretkey = ENV["LINKEDIN_API_SECRET_KEY"]

   base_url = "https://www.linkedin.com/uas/oauth2/authorization?"
   @@state = SecureRandom.urlsafe_base64
    # for running locally - this also has to be updated on linkedin dev app:  

    if Rails.env == "development"
    	@@redirect_url = "http://localhost:3000/auth/callback"
  	else
      @@redirect_url = "https://mentor-match-ga.herokuapp.com/auth/callback"
    end


		url = base_url + "response_type=code&client_id=#{@@apikey}&redirect_uri=" + @@redirect_url + "&state=" + @@state + "&scope=r_fullprofile"


		redirect_to url

	end


	def show

		if params["state"] == @@state
			c = params["code"]
			response = HTTParty.post("https://www.linkedin.com/uas/oauth2/accessToken",
				# headers: {
				# 	Content_Type: "application/x-www-form-urlencoded"
				# },
				body: {
				grant_type: "authorization_code",
				code: c,
				client_id: @@apikey,
				client_secret: @@secretkey,
				redirect_uri: @@redirect_url
				})

			session["access_token"] = response["access_token"]
			redirect_to "/auth/profile"

		else
			render :index
		end

	end

	def profile

  response = HTTParty.get("https://api.linkedin.com/v1/people/~:(id,first-name,last-name,headline,picture-url)?format=json",

     headers: {
					"authorization" => "Bearer" + session["access_token"]
				}
   	)

   pic = response["pictureUrl"]
   title = response["headline"]
   user = current_user

   user.update(img_url:  pic, title: title)

	  redirect_to edit_user_url(current_user)
 
	end

end
