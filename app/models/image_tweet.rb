class ImageTweet < ActiveRecord::Base
	has_many :tweets, as: :content
	has_attached_file :image, styles: {
		thumb: '100x100>'
	}

	def index
		self.image_file_name
	end
end
