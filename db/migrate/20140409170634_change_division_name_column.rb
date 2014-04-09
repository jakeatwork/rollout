class ChangeDivisionNameColumn < ActiveRecord::Migration
  def change
  	rename_column :divisions, :d_name, :name
  end
end
