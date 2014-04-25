FactoryGirl.define do

  factory :user do
    username { Faker::Lorem.word }
    email { Faker::Internet.email }
    password_digest { Faker::Internet.password }
  end

  factory :question do
    title {Faker::Lorem.sentence}
    body  {Faker::Lorem.paragraph}
  end
end