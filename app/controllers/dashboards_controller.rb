class DashboardsController < ApplicationController
	def show
		@text_tweet = TextTweet.new
		@tweets = current_user.tweets
	end
end