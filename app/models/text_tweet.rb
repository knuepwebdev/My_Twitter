class TextTweet < ActiveRecord::Base
	has_many :tweets, as: :content

	def index
		self.content
	end
end
 