class AddNewDate < ActiveRecord::Migration
  def change
  	add_column :projects, :date_avance_5, :datetime
  	add_column :projects, :date_avance_6, :datetime
  end
end
