# == Schema Information
#
# Table name: divisions
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Division < ActiveRecord::Base
	has_many :clients
	has_paper_trail
end
