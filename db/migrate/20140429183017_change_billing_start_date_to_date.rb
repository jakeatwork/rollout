class ChangeBillingStartDateToDate < ActiveRecord::Migration
  def change
  	change_column :clients, :billing_start_date, :date
  end
end
