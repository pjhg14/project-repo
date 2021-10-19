class RepositoriesController < ApplicationController
  before_action :logged_in?

  def create
    repo = Repository.new(permit_params)

    if repo.valid?
      repo.save      

      render json: repo
    else
      render json: {error: "Something went wrong"}
    end
  end
  
  def update
    repo = Repository.find(params[:id])
    repo.assign_attributes(permit_params)

    if repo.valid?
      repo.save

      render josn: repo
    else
      render json: {error: "Something went wrong"}
    end
  end
  

  def destroy
    repo = Repository.find(params[:id])
    repo.destroy

    render json: {message: "Repository Deleted"}
  end

  private

  def permit_params
    params.require(:repository).permit(:project_id, :host, :type, :link)
  end
  
end
