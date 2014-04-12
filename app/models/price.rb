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

class Price < ActiveRecord::Base
	has_many :clients
	has_paper_trail
	resourcify
end
