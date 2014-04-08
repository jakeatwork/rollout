# == Schema Information
#
# Table name: prices
#
#  id         :integer          not null, primary key
#  price_name :string(255)
#  cost       :integer
#  created_at :datetime
#  updated_at :datetime
#

class Price < ActiveRecord::Base
	has_and_belongs_to_many :clients
end
