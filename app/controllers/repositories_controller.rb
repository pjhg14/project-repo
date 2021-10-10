class RepositoriesController < ApplicationController
  before_action :logged_in?

  def destroy
    repo = Repository.find(params[:id])
    repo.destroy

    render json: {message: "Repository Deleted"}
  end
  
end
