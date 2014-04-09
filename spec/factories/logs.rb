# == Schema Information
#
# Table name: logs
#
#  id           :integer          not null, primary key
#  user_id      :integer
#  modification :string(255)
#  created_at   :datetime
#  updated_at   :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :log do
    user_id 1
    modification "MyString"
  end
end
