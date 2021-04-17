FactoryBot.define do
  factory :comment do
    user { nil }
    story { nil }
    body { "MyText" }
  end
end
