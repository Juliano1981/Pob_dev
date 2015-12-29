class TableProjects < ActiveRecord::Migration
  def change
  	create_table :projects
  	add_column :projects, :date, :datetime
    add_column :projects, :domaine, :string
   	add_column :projects, :site_type, :string #site vitrine, Ecommerce...
  	add_column :projects, :multilingue, :string
  	add_column :projects, :avancé, :integer #étape en 4 parties
  	add_column :projects, :techno_type, :string #wordpress, bootstrap, Prestashop
  	add_column :projects, :description, :text 
  	add_column :projects, :client_id, :integer
  	add_index :projects, :client_id
  end
end
