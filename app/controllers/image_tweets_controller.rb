class ImageTweetsController < ApplicationController
	def create
		tweet = current_user.tweets.new(content: new_image_tweet)
		if tweet.save
			redirect_to dashboard_path
		else
			flash.alert = 'Tweet cannot be empty'
			redirect_to dashboard_path
		end
	end

	private

	def new_image_tweet
		ImageTweet.new(image_tweet_params)
	end

	def image_tweet_params
		params.require(:image_tweet).permit(:image)
	end
end