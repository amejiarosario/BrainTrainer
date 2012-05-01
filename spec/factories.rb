require 'faker'

FactoryGirl.define do
  
  # operation factory
  factory :operation do |f|
    f.numbers "2,3,7,8"
    f.operator "+"
    f.align "horizontal"
  end
  
  # exercise factory
  factory :exercise do
    no {1 + rand(1000)}
    short_description {Faker::Lorem.sentence}
    long_description {Faker::Lorem.paragraphs}
  end
  
  #user
  factory :user do
    email {Faker::Internet.email}
    password "1234"
    admin false
    name {Faker::Name.name}
  end  
end
