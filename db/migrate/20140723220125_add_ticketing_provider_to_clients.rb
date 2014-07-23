class AddTicketingProviderToClients < ActiveRecord::Migration
  def change
  	add_column :clients, :ticketing_provider, :string
  end
end
