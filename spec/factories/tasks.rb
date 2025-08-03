FactoryBot.define do
  factory :task do
    title { Faker::Lorem.sentence }
    description { Faker::Lorem.paragraph }
    completed { false }
    task_date { 1.hour.from_now }
    user { association :user }
  end
end
