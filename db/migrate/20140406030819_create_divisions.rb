class CreateDivisions < ActiveRecord::Migration
  def change
    create_table :divisions do |t|
      t.string :d_name

      t.timestamps
    end
  end
end
