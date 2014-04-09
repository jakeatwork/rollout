class AddTableClientsPrices < ActiveRecord::Migration
  def change
  	  create_table :clients_prices do |t|
      t.belongs_to :clients
      t.belongs_to :prices
    end
  end
end
