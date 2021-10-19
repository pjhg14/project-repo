class RequirementsController < ApplicationController
  before_action :logged_in?

  def create
    req = Requirement.new(permit_params)

    if req.valid?
      req.save

      render json: req
    else
      render json: {error: "Something went wrong"}
    end
  end
  
  def update
    req = Requirement.find(params[:id])
    req.assign_attributes(permit_params)

    if req.valid?
      req.save

      render json: req
    else
      render json: {error: "Something went wrong"}
    end
  end
  

  def destroy
    req = Requirement.find(params[:id])
    req.destroy

    render json: {message: "Requirement Deleted"}
  end
  
  private

  def permit_params
    params.require(:requirement).permit(:project_id, :req)
  end
  
end
