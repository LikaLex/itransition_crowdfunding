class ProjectsController < ApplicationController
  before_action :find_project, only: [:edit, :update, :show, :delete]
  before_action :restrict_modification, only: [:edit, :update]

  # Index action to render all projects
  def index
    @projects = Project.all
  end

  # New action for creating project
  def new
    @project = Project.new
  end

  # Create action saves the project into database
  def create
    @project = Project.new(user: current_user)
    if @project.update(project_params)
      flash[:notice] = "Successfully created project!"
      redirect_to project_path(@project)
    else
      flash[:alert] = "Error creating new project!"
      render :new
    end
  end

  # Edit action retrives the project and renders the edit page
  def edit
  end

  # Update action updates the project with the new information
  def update
    if @project.update_attributes(project_params)
      flash[:notice] = "Successfully updated project!"
      redirect_to project_path(@project)
    else
      flash[:alert] = "Error updating project!"
      render :edit
    end
  end

  # The show action renders the individual project after retrieving the the id
  def show
    commontator_thread_show(@project)
  end

  # The destroy action removes the project permanently from the database
  def destroy
    if @project.destroy
      flash[:notice] = "Successfully deleted project!"
      redirect_to projects_path
    else
      flash[:alert] = "Error updating project!"
    end
  end

  private

  def project_params
    params.require(:project).permit(:title, :description, :funding_deadline)
  end

  def find_project
    @project = Project.find(params[:id])
  end

  def restrict_modification
    if @project.finished?
      redirect_to @project
      return
    end
  end
end
