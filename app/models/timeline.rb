class Timeline
	extend ActiveModel::Naming
	include ActiveModel::Model

	def initialize(user)
		@user = user
	end 

	def tweets
		Tweet.where(user_id: tweet_user_ids)
	end

	private
	def tweet_user_ids
		[@user.id] + @user.followed_user_ids
	end
end