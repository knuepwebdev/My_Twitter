class ImageTweet < ActiveRecord::Base
	has_many :tweets, as: :content
	has_attached_file :image, styles: {
		thumb: '100x100>'
	}, url: 's3.amazonaws.com/tweeeter', :storage => :s3,
    :s3_credentials => {
      :bucket => ENV['S3_BUCKET_NAME'],
      :access_key_id => ENV['AWS_ACCESS_KEY_ID'],
      :secret_access_key => ENV['AWS_SECRET_ACCESS_KEY']
    }

	def index
		self.image_file_name
	end
end
