class BreakPointsController < ApplicationController
  def index
    @break_points = BreakPoint.all
  end

  def show
    @break_point = BreakPoint.find(params[:id])
  end

  def new
    @break_point = BreakPoint.new
  end

  def edit
    @break_point = BreakPoint.find(params[:id])
  end

  def create
    @break_point = BreakPoint.new(break_points_params)

    if @break_point.save
      redirect_to projects_path(@project)
    else
      render :new
    end
  end

  def update
    @break_point = BreakPoint.find(params[:id])

    if @break_point.update_attributes(break_points_params)
      redirect_to projects_path(@project)
    else
      render :edit
    end
  end

  def destroy
    @break_point = BreakPoint.find(params[:id])
    @break_point.destroy
    redirect_to projects_url
  end

  private

  def break_points_params
    params.require(:break_point).permit(:description, :value)
  end
end
