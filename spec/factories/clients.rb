# == Schema Information
#
# Table name: clients
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  division_id :string(255)
#  region      :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#  internal    :boolean
#  price_id    :integer
#  launch_date :date
#  notes       :text
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :client do
    name "MyString"
    division "MyString"
    region "MyString"
  end
end
