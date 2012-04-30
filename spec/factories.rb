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
    short_description Faker::Lorem.sentence
    long_description Faker::Lorem.paragraphs
    
    # nested operation
    # factory :operation do
    #   numbers "2,3,7,8"
    #   operator "+"
    #   align "horizontal"      
    # end
    
  end
  
end
