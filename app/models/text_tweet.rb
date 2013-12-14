class TextTweet < ActiveRecord::Base
	def index
		self.content
	end
end
 