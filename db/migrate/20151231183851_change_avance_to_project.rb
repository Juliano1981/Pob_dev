class ChangeAvanceToProject < ActiveRecord::Migration
    def up
    change_column :projects, :avancé, :integer
  end

  def down
    change_column :projects, :avance, :integer
  end
end
