class AddFinanceFieldsToClientsTable < ActiveRecord::Migration
  def change
  	add_column :clients, :consolidated, :boolean
  	add_column :clients, :finance_contact_name, :string
  	add_column :clients, :finance_contact_email, :string
  	add_column :clients, :finance_contact_phone, :string
  	add_column :clients, :venue_contact_name, :string
  	add_column :clients, :venue_contact_email, :string
  	add_column :clients, :venue_contact_phone, :string
  end
end
