class ChangeDivisionNameColumn < ActiveRecord::Migration
  def change
  	rename_column :divisions, :d_name, :name
  	rename_column :clients, :division, :division_id
  end
end
