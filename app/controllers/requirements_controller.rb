class RequirementsController < ApplicationController
  before_action :logged_in?

  def destroy
    requirement = Requirement.find(params[:id])
    requirement.destroy

    render json: {message: "Requirement Deleted"}
  end
  
end
