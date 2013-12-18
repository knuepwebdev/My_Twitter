module UsersHelper
	def follow_user_button(user)
		if current_user.following?(user)
			button_to 'Unfollow', user_follow_path(user), method: :delete, class: 'blue_button'
		else
			button_to 'Follow', user_follow_path(user), class: 'blue_button'
		end
	end
end