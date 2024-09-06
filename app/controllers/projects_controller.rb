class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])

    # Convertir la chaîne de caractères des technologies en tableau pour l'affichage
    @technologies = @project.technologies.split(',') if @project.technologies.present?
  end
end
