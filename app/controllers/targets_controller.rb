class TargetsController < ApplicationController
  before_action :find_project, only: [:new, :create]
  before_action :find_target, only: [:edit, :update, :destroy]

  def new
    @target = @project.targets.build
  end

  def edit
  end

  def create
    @target = @project.targets.create(params[:target])
  end

  def update
  end

  def destroy
    @target.destroy
  end

  private
  def find_project
    @project = Project.find(params[:project_id])
  end

  def find_target
    @target = @project.targets.find(params[:id])
  end
end
