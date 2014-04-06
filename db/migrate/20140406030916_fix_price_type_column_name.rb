class FixPriceTypeColumnName < ActiveRecord::Migration
  def change
  	rename_column :prices, :type, :price_name
  end
end
