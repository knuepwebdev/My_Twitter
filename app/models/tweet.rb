class Tweet < ActiveRecord::Base
  belongs_to :user
  belongs_to :content, polymorphic: true
  default_scope { order('created_at DESC') }


  def self.text_tweets
  	where(content_type: 'TextTweet')
  end
end
   