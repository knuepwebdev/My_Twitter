class TweetComposer
	def new_text_tweet
		TextTweet.new
	end

	def new_image_tweet
		ImageTweet.new
	end
end