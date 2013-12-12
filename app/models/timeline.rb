class Timeline
	extend ActiveModel::Naming
	include ActiveModel::Model

	def initialize(user)
		@user = user
	end 

	def tweets
		Tweet.where(user_id: tweet_user_ids)
	end
	#show the user's own tweets and the tweets of followed users

	private
	def tweet_user_ids
		[@user.id] + @user.followed_user_ids
	end
end