class ChangeCostColumnToPrice < ActiveRecord::Migration
  def change
  	rename_column :clients, :cost_id, :price_id
  end
end
