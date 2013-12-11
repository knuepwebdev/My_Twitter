class TextTweetsController < ApplicationController
	def create
		tweet = current_user.tweets.new(content: new_text_tweet)
		if tweet.save
			redirect_to dashboard_path
		else
			flash.alert = 'Tweet cannot be empty'
			redirect_to dashboard_path
		end
	end

	private

	def new_text_tweet
		TextTweet.new(text_tweet_params)
	end

	def text_tweet_params
		params.require(:text_tweet).permit(:content)
	end
end