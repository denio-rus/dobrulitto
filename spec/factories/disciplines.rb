FactoryBot.define do
  factory :discipline do
    sequence(:title) { |n| "Discipline-#{n}" }
  end
end