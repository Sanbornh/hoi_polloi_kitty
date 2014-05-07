class ProjectsController < ApplicationController
  
  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
  end

  def edit
    @project = Project.find(params[:id])
  end

  def create
    @project = Project.new(projects_params)

    if @project.save
      redirect_to projects_url
    else
      render :new
    end
  end

  def update
    @project = Project.find(params[:id])

    if @project.update_attributes(projects_params)
      redirect_to project_path(@project)
    else
      render :edit
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @project.destroy
    redirect_to projects_url
  end

  private

  def projects_params
    params.require(:project).permit(:name, :description, :goal, :funding_start, :funding_end)
  end
end
