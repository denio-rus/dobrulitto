FactoryBot.define do
  factory :course do
    sequence(:title) { |n| "Course-#{n}" }
    description { "Some Description" }
    discipline 
  end
end
