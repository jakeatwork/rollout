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
#

class Client < ActiveRecord::Base
	belongs_to :price
  belongs_to :division
  has_paper_trail
  resourcify
	# has_one :launch - removing launch and just including in client db
	# has_one :division

  # def self.to_csv(options = {})
  #  CSV.generate(options) do |csv|
  #    csv << column_names
  #    all.each do |product|
  #      csv << product.attributes.values_at(*column_names)
  #    end
  #  end
  # end
end
