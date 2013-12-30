# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :inquiry do
    email_address "MyString"
    subject "MyString"
    description "MyText"
    first_name "MyString"
    last_name "MyString"
  end
end
