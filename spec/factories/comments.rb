FactoryBot.define do
  factory :comment do
    sequence(:body) { |n| "Comment-#{n}" }
    commentable { nil }
    user 
    confirmed { false }
  end
end
