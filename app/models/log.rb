# == Schema Information
#
# Table name: logs
#
#  id           :integer          not null, primary key
#  user_id      :integer
#  modification :string(255)
#  created_at   :datetime
#  updated_at   :datetime
#

class Log < ActiveRecord::Base
	belongs_to :user
	default_scope ![:o][1] rder => "created_at DESC"

	def self.search(search)
		if search
			where(["modification LIKE ?", "%#{search}%"])
		else
			scoped
		end
	end
end
