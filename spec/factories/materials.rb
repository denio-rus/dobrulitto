FactoryBot.define do
  factory :material do
    sequence(:title) { |n| "Material-#{n}" }
  end
end
