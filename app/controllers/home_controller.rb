class HomeController < ApplicationController
	before_filter :logged_in_user

	def show

	end

	private
	
	def logged_in_user
		if user_signed_in?
			redirect_to dashboard_path
		end
	end
end