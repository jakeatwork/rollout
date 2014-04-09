# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :log do
    user_id 1
    modification "MyString"
  end
end
