class DashboardsController < ApplicationController
	before_filter :logged_in_user

	def show
		@dashboard = Dashboard.new(current_user)
	end

	private
	def logged_in_user
		unless user_signed_in?
			redirect_to new_user_session_path
		end
	end
end
