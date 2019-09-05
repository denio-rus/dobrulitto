FactoryBot.define do
  factory :specification do
    material

    for_sketch

    trait :for_skecth do
      association(:specificable, factory: :sketch)
    end

    trait :for_watercolor do
      association(:specificable, factory: :watercolor)
    end
  end
end
