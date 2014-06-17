# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :condolence do
    user_id 1
    obituary_id 1
    body "MyText"
  end
end
