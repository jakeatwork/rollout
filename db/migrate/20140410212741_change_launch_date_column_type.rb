class ChangeLaunchDateColumnType < ActiveRecord::Migration
  def change
  	change_column :clients, :launch_date, :date
  end
end
