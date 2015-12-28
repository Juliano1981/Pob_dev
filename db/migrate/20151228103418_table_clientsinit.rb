class TableClientsinit < ActiveRecord::Migration
  def change
    create_table :clients
    add_column :clients, :nom, :string
    add_column :clients, :prenom, :string
   	add_column :clients, :entreprise, :string
  	add_column :clients, :rue, :string
  	add_column :clients, :ville, :string
  	add_column :clients, :tel, :integer
  	add_column :clients, :description, :text
  	add_column :clients, :contrat_type, :string
  	add_column :clients, :email, :string

  end
end
