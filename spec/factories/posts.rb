FactoryBot.define do
  factory :post do
    sequence(:title) { |n| "Post-#{n}" }
    content_ru { "MyText" }
    content_en { "MyText" }
  end
end
