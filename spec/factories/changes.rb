# == Schema Information
#
# Table name: changes
#
#  id         :integer          not null, primary key
#  date       :datetime
#  note       :text
#  created_at :datetime
#  updated_at :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :change do
    date "2014-04-05 11:28:18"
    note "MyText"
  end
end
