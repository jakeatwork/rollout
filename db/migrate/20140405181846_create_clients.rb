class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.string :division
      t.string :region

      t.timestamps
    end
  end
end
