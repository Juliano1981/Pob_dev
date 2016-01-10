class HomeController < ApplicationController
  
before_action :authenticate_user!

  def index
    @clients = Client.all
    @var_id = Client.last.id + 1
    @projets = Project.last(5)
  end


   def clients
  @back_url = session[:my_previous_url]
  @creer = Client.create nom: params[:nom], email: params[:email], prenom: params[:prenom], entreprise: params[:entreprise], rue: params[:rue], ville: params[:ville], tel: params[:tel], avatar: params[:avatar], description: params[:description], contrat_type: params[:contrat_type]
  if @creer.valid?
    redirect_to "/"
  flash[ :success ] = "Les éléments ont été mis à jour avec succès"
  else
  redirect_to "/"
  flash[ :nosucces ] = "L'enregistrement n'est pas pris en compte car il manque un ou plusieurs éléments"
  end  
  end

  def creation 
     @var_id = Client.last.id + 1
  end

  def show
    @projets = Project.where(client_id: params[:id])
    @client = Client.find(params[:id])
    @clients = Client.all
  end

def update
    @client = Client.find(params[:id])    
    if @client.update_attributes(user_params)
    redirect_to "/client/#{params[:id]}"
    flash[ :success ] = "Les éléments ont été mis à jour avec succès"
    else 
      render 'show'
    end
  end 


  def destroy
    Client.find(params[:id]).destroy
    Project.where(client_id: params[:id]).destroy_all
    redirect_to "/"
  end

private

def set_book
 @set = Client.find(params[:id])
end
# Use strong_parameters for attribute whitelisting
# Be sure to update your create() and update() controller methods.

def user_params
  params.require(:client).permit( :nom, :prenom, :entreprise, :email, :rue, :ville, :tel, :avatar, :description, :contrat_type)
end

end
