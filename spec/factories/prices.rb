# == Schema Information
#
# Table name: prices
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  cost       :integer
#  created_at :datetime
#  updated_at :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :price do
    type ""
    cost 1
  end
end
