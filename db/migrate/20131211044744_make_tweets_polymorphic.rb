class MakeTweetsPolymorphic < ActiveRecord::Migration
  def up
  	remove_column :tweets, :content
  	add_column :tweets, :content_type, :string
  	add_column :tweets, :content_id, :integer
  	add_index :tweets, [:content_type, :content_id]
  end

  def down
  	remove_index :tweets, column: [:content_type, :content_id]
  	remove_column :tweets, :content_id
  	remove_column :tweets, :content_type
  	add_column :tweets, :content, :string
  end
end
