require 'digest/md5'

module TweetsHelper
	def display_gravatar(user, size = 35)	#the size parameter is optional
		digest = Digest::MD5.hexdigest(user.email)
		image_tag("http://gravatar.com/avatar/#{digest}?size=#{size}")
	end

	def make_tweet(text)
		link_hashtags(strip_tags(text)).html_safe
	end

	private
	def link_hashtags(text)
		text.gsub(/#(\w+)/) { |match| link_to(match, hashtag_path($1)) }
			#capture the characters after the # and pass the capture in the url
	end
end