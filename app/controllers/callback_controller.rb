class CallbackController < ApplicationController

def index
	binding.pry

	code = params

	access_token = oauth.get_access_token(code)

end

end