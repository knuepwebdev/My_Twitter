class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :tweets
  has_many :followed_user_relations, 
  					foreign_key: :follower_id,
  					class_name: 'FollowingRelation'
  has_many :followed_users, through: :followed_user_relations
 	has_many :follower_relations, 
 						foreign_key: :followed_user_id, 
 						class_name: 'FollowingRelation' 
 	has_many :followers, through: :follower_relations
end