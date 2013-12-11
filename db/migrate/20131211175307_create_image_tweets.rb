class CreateImageTweets < ActiveRecord::Migration
  def change
    create_table :image_tweets do |t|
      t.attachment :image
    end
  end
end
