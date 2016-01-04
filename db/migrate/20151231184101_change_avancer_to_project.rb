class ChangeAvancerToProject < ActiveRecord::Migration
  	def change   
  	    rename_column :projects, :avancé, :avance
end
end