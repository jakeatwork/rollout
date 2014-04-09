class AddLaunchDateColumnToClientsTable < ActiveRecord::Migration
  def change
  	add_column :clients, :launch_date, :datetime
  end
end
