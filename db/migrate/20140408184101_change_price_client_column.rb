class ChangePriceClientColumn < ActiveRecord::Migration
  def change
  	rename_column :clients_prices, :clients_id, :client_id
  	rename_column :clients_prices, :prices_id, :price_id
  end
end
