class CreateChanges < ActiveRecord::Migration
  def change
    create_table :changes do |t|
      t.datetime :date
      t.text :note

      t.timestamps
    end
  end
end
