require 'faker'

FactoryGirl.define do
  factory :user do
    username { Faker::Internet.user_name }
    email { Faker::Internet.email }
    password 'p@ssw0rd'
    password_confirmation 'p@ssw0rd' 
  end
end
