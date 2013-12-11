class DashboardsController < ApplicationController
	def show
		@text_tweet = TextTweet.new
		@image_tweet = ImageTweet.new
		@tweets = current_user.tweets
	end
end