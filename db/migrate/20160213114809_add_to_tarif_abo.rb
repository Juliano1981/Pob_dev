class AddToTarifAbo < ActiveRecord::Migration
  def change
  	   add_column :projects, :tarif_abo, :integer
  end
end
