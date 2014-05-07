# This will guess the User class

FactoryGirl.define do
  factory :project do
    name "Test Project"
    description  "This is for doing cool stuff"
    goal 4000
    funding_start "2014-05-06"
    funding_end "2014-05-07"
  end

  factory :break_point do
    value 25
    description "This is what I'll get for paying the value of this break point"
  end
end