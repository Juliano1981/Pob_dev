class Changformatdate < ActiveRecord::Migration
  def change

  	 def up
    change_column :projects, :date_avance_2, :datetime
    change_column :projects, :date_avance_3, :datetime
     end

  def down
    change_column :projects, :date_avance_2, :string
    change_column :projects, :date_avance_3, :string
    end


  end
end
