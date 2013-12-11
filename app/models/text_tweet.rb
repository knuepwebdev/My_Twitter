class TextTweet < ActiveRecord::Base
	has_many :tweets, as: :content
end
 