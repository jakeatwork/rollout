class ChangePriceNameColumn < ActiveRecord::Migration
  def change
  	  	rename_column :prices, :price_name, :name
  end
end
