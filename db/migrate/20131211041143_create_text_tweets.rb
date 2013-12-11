class CreateTextTweets < ActiveRecord::Migration
  def change
    create_table :text_tweets do |t|
      t.string :content
    end
  end
end
