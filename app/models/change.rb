# == Schema Information
#
# Table name: changes
#
#  id         :integer          not null, primary key
#  date       :datetime
#  note       :text
#  created_at :datetime
#  updated_at :datetime
#

class Change < ActiveRecord::Base
end
