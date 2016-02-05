class ChangetypeDate < ActiveRecord::Migration
    def up
    change_column :projects, :date_avance_3, :string
    change_column :projects, :date_avance_4, :string
  end

  def down
    change_column :projects, :date_avance_3, :datetime
    change_column :projects, :date_avance_4, :datetime
  end
end