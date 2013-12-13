class TweetsController < ApplicationController
	def new
		@tweet_composer = TweetComposer.new
	end

	def show
		@tweet = Tweet.find(params[:id])
	end
end