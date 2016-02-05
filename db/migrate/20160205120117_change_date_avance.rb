class ChangeDateAvance < ActiveRecord::Migration
  def change
  	 	change_column :projects, :date_avance_3, :datetime
    	change_column :projects, :date_avance_4, :datetime
  end
end
