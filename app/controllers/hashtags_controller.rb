class HashtagsController < ApplicationController
	def show
		@search = Search.new(searchterm: hashtag)
	end

	private
	def hashtag
		"##{params[:id]}"
	end
end