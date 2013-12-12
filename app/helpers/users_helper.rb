module UsersHelper
	def follow_user_button(user)
		button_to 'Follow', user_follow_path(user)
	end
end