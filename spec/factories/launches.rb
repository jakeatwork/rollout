# == Schema Information
#
# Table name: launches
#
#  id         :integer          not null, primary key
#  beta       :boolean
#  betadate   :datetime
#  startdate  :datetime
#  created_at :datetime
#  updated_at :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :launch do
    beta false
    betadate "2014-04-05 11:25:13"
    startdate "2014-04-05 11:25:13"
  end
end
