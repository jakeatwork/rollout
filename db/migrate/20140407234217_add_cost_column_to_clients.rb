class AddCostColumnToClients < ActiveRecord::Migration
  def change
  	add_column :clients, :cost_id, :integer
  end
end
