FactoryBot.define do
  factory :albums do
    sequence(:title) { |n| "Album-#{n}" } 
    description { "Some Description" }
    began_at { rand(25..100).days.ago.to_date }
    ended_at { rand(1..20).days.ago.to_date }
  end
end
