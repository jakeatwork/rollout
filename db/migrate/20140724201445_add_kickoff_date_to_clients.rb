class AddKickoffDateToClients < ActiveRecord::Migration
  def change
  	add_column :clients, :kickoff_date, :datetime
  end
end
