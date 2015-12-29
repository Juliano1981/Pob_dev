class ProjetController < ApplicationController
  
  def index
  	    @projets = Project.all
  end

  def show
@projects = Project.where( client_id: params[:id])
  end

  def create
  end

end
