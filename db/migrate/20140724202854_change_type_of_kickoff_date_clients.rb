class ChangeTypeOfKickoffDateClients < ActiveRecord::Migration
  def change
  	 change_column :clients, :kickoff_date, :date
  end
end
