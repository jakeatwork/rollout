class CreateLaunches < ActiveRecord::Migration
  def change
    create_table :launches do |t|
      t.boolean :beta
      t.datetime :betadate
      t.datetime :startdate

      t.timestamps
    end
  end
end
