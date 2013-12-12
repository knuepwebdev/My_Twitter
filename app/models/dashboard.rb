class Dashboard 
	def initialize(user)
		@user = user
	end

	def new_text_tweet
		TextTweet.new
	end

	def new_image_tweet
		ImageTweet.new
	end

	def tweets
		Tweet.all
	end
end
