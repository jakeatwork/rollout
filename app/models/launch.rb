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

class Launch < ActiveRecord::Base
	belongs_to :client
end
