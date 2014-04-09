# == Schema Information
#
# Table name: divisions
#
#  id         :integer          not null, primary key
#  d_name     :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Division < ActiveRecord::Base
	has_many :clients
end
