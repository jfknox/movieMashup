class SessionsController < ApplicationController

	def create
	  user = User.from_omniauth(env["omniauth.auth"])
	  session[:user_id] = user.id
	  redirect_to root_url
	end

	def destroy
	  session[:user_id] = nil
	  redirect_to root_url
	end

	
	def new
		@stories = Story.order_by_rand.limit(3).all
		@posters = Poster.order_by_rand.limit(10).all
	end		

	
end

