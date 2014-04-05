class CreatePrices < ActiveRecord::Migration
  def change
    create_table :prices do |t|
      t.string :type
      t.integer :cost

      t.timestamps
    end
  end
end
