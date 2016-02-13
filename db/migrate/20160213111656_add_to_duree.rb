class AddToDuree < ActiveRecord::Migration
  def change
   add_column :projects, :duree_crea, :integer
  end
end
