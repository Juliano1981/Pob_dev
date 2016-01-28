class ProjetController < ApplicationController

  before_action :authenticate_user!

  
  def index
     @projets = Project.all
  end

  def show
@projects = Project.where( client_id: params[:id])
  end

  def new
 @date = Date.today
 @client= Client.find(params[:id])
 @projets = Project.all
  end 

  def edit
@date = Date.today
@projet = Project.find(params[:id])
@projets = Project.where( client_id: params[:id])
  end


def user_params
  params.require(:project).permit( :date, :domaine, :site_type, :multilingue, :avance, :techno_type, :description, :note, :date_avance_2, :date_avance_3, :date_avance_4, :tarif)
end

  def update
  	 @projet = Project.find(params[:id])    
    if @projet.update_attributes(user_params)
    redirect_to "/projet/#{params[:id]}/edit"
    flash[ :success ] = "Les éléments ont été mis à jour avec succès"
    else 
      render 'show'
    end
  end

    def destroy
    Project.find(params[:id]).destroy
    redirect_to "/"
  end

def create
@date = Date.today
@creer_project = Project.create date: @date, domaine: params[:domaine], site_type: params[:site_type], multilingue: params[:multilingue], avance: params[:avance], techno_type: params[:techno_type], description: params[:description], client_id: params[:id]
  if @creer_project.valid?
  redirect_to "/"
  flash[ :success ] = "Le site a été ajouté à la base PoB avec succès"
  else
  redirect_to "/"
  flash[ :nosucces ] = "Une erreure a été identifiée !"
  end
 end

end
