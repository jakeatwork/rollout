# == Schema Information
#
# Table name: admins
#
#  id            :integer          not null, primary key
#  name          :string(255)
#  resource_id   :integer
#  resource_type :string(255)
#  created_at    :datetime
#  updated_at    :datetime
#

require 'spec_helper'

describe Admin do
  pending "add some examples to (or delete) #{__FILE__}"
end
