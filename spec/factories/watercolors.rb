FactoryBot.define do
  factory :watercolor do
    sequence(:title) { |n| "Watercolor-#{n}" }
    descrition { "Some Description" }
    genre
    date { rand(1..100).days.ago.to_date }
    height { rand(25..100 ) }
    width { rand(25..100 ) }
  end
end