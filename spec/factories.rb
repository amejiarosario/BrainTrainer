FactoryGirl.define do
  factory :operation do |f|
    f.numbers "2,3,7,8"
    f.operator "+"
    f.align "horizontal"
  end
end
