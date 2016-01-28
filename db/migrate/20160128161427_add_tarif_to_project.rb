class AddTarifToProject < ActiveRecord::Migration
  def change
  	add_column :projects, :tarif, :float
  end
end
