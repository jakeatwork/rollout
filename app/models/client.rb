# == Schema Information
#
# Table name: clients
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  division   :string(255)
#  region     :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Client < ActiveRecord::Base
	has_one :price
	has_one :launch
	# has_one :division

	def self.to_csv
		CSV.generate do |csv|
			csv << column_names
			all.each do |client|
				csv << client.attributes.values_at(*column_names)
			end
		end
	end
end
