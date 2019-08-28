FactoryBot.define do
  factory :lesson do
    sequence(:title) { |n| "Lesson-#{n}" }
    description { "Some Description" }
    course 
  end
end
