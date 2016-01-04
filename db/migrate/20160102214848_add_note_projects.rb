class AddNoteProjects < ActiveRecord::Migration
  def change
  	add_column :projects, :date_avance_2, :datetime
    add_column :projects, :note, :text
   	add_column :projects, :date_avance_3, :string
   	add_column :projects, :date_avance_4, :string
  end
end
