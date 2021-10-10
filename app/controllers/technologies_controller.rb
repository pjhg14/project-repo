class TechnologiesController < ApplicationController
  before_action :logged_in?, only: [:destroy]
  
  def index
    technologies = Technology.all

    render json: technologies
  end

  def destroy
    tech = Technology.find(params[:id])
    tech.destroy

    render json: {message: "Tech deleted"}
  end
  
end
