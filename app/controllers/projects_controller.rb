class ProjectsController < ApplicationController
  before_action :logged_in?, only: [:create, :update, :destroy]

  def index
    projects = Project.all

    render json: projects
  end

  def show
    project = Project.find(params[:id])

    render json: project
  end

  def create
    project = Project.new(permit_params)

    if project.valid?
      if params[:image] && params[:image] != ""
        image = Cloudinary::Uploader.upload(params[:image])
        project.image = image["url"]
      end

      project.save

      render json: project
    else
      render json: {error: "Something went wrong"}
    end
    
  end

  def update
    project = Project.find(params[:id])
    project.assign_attributes(permit_params)

      if project.valid?
        project.save

        render json: project
      else
        render json: {error: "Something went wrong"}
      end

  end

  def upload
    project = Project.find(params[:id])

    image = Cloudinary::Uploader.upload(params[:image])
    project.update(image: image["url"])

    render json: project
  end
  
  
  def destroy
    project = Project.find(params[:id])

    project.destroy

    render json: {message: "Project deleted"}
  end
  
  private

  def permit_params
    params.require(:project).permit(:title, :short_desc, :long_desc, :completion_date, :video_url, :live_url, :complexity)
  end
  
  def permit_image
    params.require(:project).permit(:image)
  end
  
end
