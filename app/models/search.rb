class Search
	attr_reader :searchterm

	def initialize(options = {})
		@searchterm = options.fetch(:searchterm, '')
	end

	def tweets
		Tweet.text_tweets.where(content_id: text_tweets)
	end

	private
	def text_tweets
		TextTweet.where("content LIKE ?", get_search_term)
	end

	def get_search_term
		"%#{searchterm}%"
	end
end