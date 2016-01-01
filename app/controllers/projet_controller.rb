class ProjetController < ApplicationController
  
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
