require 'digest/md5'

module TweetsHelper
	def display_gravatar(user, size = 35)	#the size parameter is optional
		digest = Digest::MD5.hexdigest(user.email)
		image_tag("http://gravatar.com/avatar/#{digest}?size=#{size}")
	end
end