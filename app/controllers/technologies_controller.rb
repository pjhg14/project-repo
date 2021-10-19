class TechnologiesController < ApplicationController
  before_action :logged_in?, only: [:create, :destroy]
  
  def index
    technologies = Technology.all

    render json: technologies
  end

  def create
    tech = Technology.new(permit_params)

    if tech.valid?
      tech.save

      render json: tech
    else
      render json: {error: "Something went wrong"}
    end
  end
  

  def destroy
    tech = Technology.find(params[:id])
    tech.destroy

    render json: {message: "Tech deleted"}
  end

  private

  def permit_params
    params.require(:technology).permit(:name)
    
  end
  
end
