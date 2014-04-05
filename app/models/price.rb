# == Schema Information
#
# Table name: prices
#
#  id         :integer          not null, primary key
#  type       :string(255)
#  cost       :integer
#  created_at :datetime
#  updated_at :datetime
#

class Price < ActiveRecord::Base
	belongs_to :client
end
