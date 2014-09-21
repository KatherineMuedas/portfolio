class PicturesController < ApplicationController
  before_action :find_project
  def new
    @picture = @project.pictures.new
  end

  def create
    @picture = @project.pictures.new(pictures_params)
 
    if @picture.save
      redirect_to root_path
    else
      render 'new'
    end
  end
  
  def destroy
    @picture = Picture.find(params[:id])
    @picture.destroy
    redirect_to root_url
  end

  private
  
  def find_project
    @project = Project.find(params[:project_id])
  end
  def pictures_params
    params.require(:picture).permit(:title, :photo)
  end
end
