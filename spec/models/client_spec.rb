# == Schema Information
#
# Table name: clients
#
#  id                    :integer          not null, primary key
#  name                  :string(255)
#  division_id           :string(255)
#  region                :string(255)
#  created_at            :datetime
#  updated_at            :datetime
#  internal              :boolean
#  price_id              :integer
#  launch_date           :date
#  notes                 :text
#  billing_start_date    :date
#  consolidated          :boolean
#  finance_contact_name  :string(255)
#  finance_contact_email :string(255)
#  finance_contact_phone :string(255)
#  venue_contact_name    :string(255)
#  venue_contact_email   :string(255)
#  venue_contact_phone   :string(255)
#  ticketing_provider    :string(255)
#  kickoff_date          :datetime
#

require 'spec_helper'

describe Client do
  pending "add some examples to (or delete) #{__FILE__}"
end
