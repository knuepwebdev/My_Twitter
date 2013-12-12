class FollowingRelationsController < ApplicationController
	def create
		user = find_user
		current_user.follow(user)
		redirect_to user, notice: "You are now following #{user.username.capitalize}"
	end

	def destroy
		user = find_user
		current_user.unfollow(user)
		redirect_to user, notice: "You are no longer following #{user.username.capitalize}"
	end

	private
	def find_user
		User.find(params[:user_id])
	end
end 