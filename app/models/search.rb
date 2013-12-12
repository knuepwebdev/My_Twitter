class Search
	extend ActiveModel::Naming
	include ActiveModel::Model
	attr_reader :searchterm

	def initialize(options = {})
		@searchterm = options.fetch(:searchterm, '')
	end

	def tweets
		Tweet.search do
			fulltext searchterm
		end.results		#returns the array of tweets
	end
end