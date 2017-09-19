class TargetsController < ApplicationController
  before_action :find_project, only: [:new, :create]
  before_action :find_target, only: [:edit, :update, :destroy]

  def new
    @target = @project.targets.build
  end

  def edit
  end

  def create
    #@target = Target.new(user: current_user, project: find_project)
    if @project.targets.create(target_params)
      flash[:notice] = "Successfully created target!"
      redirect_to @project
    else
      flash[:alert] = "Error creating new target!"
      render :new
    end
  end


  def update
    if @target.update_attributes(target_params)
      flash[:notice] = "Successfully updated target!"
      redirect_to project_path(@target.project)
    else
      flash[:alert] = "Error updating target!"
      render :edit
    end
  end

  def destroy
    @target.destroy
    if @target.destroy
      flash[:notice] = "Successfully deleted target!"
      redirect_to @target.project
    else
      flash[:alert] = "Error updating target!"
    end
  end



  private
  def find_project
    @project = Project.find(params[:project_id])
  end

  def find_target
    @target = Target.find(params[:id])
  end

  def target_params

    params.require(:target).permit(:title, :description, :price)
  end

end
