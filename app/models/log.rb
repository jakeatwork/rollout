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
end
