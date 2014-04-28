class AddBillingStartDateToClients < ActiveRecord::Migration
  def change
  	add_column :clients, :billing_start_date, :datetime
  end
end
