FactoryBot.define do
  factory :comment do
    sequence(:body) { |n| "Comment-#{n}" }
    language { "ru" }
    commentable { nil }
    user 
    confirmed { false }
  end
end
