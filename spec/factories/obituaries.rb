# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :obituary do
    first_name "MyString"
    last_name "MyString"
    died_at "2014-01-16"
    age 1
    worship "MyString"
    sex "MyString"
    message "MyText"
    user_id 1
  end
end
