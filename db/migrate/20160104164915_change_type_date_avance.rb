class ChangeTypeDateAvance < ActiveRecord::Migration
  def change
  	  def up
    change_column :projects, :date_avance_3, :datetime
    change_column :projects, :date_avance_4, :datetime
end

  def down
    change_column :projects, :date_avance_3, :string
    change_column :projects, :date_avance_4, :string

  end
  end
end
