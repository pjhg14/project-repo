class UtilizationsController < ApplicationController
  def create
    util = Utilization.new(permit_params)

    if util.valid?
      project = Project.find(params[:project_id])
      util.save

      render json: project
    else
      render json: {message: "error joining project to tech"}
    end
  end

  def destroy
    util = Utilization.find_by(project_id: params[:project_id], technology_id: params[:technology_id])
    util.destroy

    render json: {message: "Join Destroyed"}
  end

  private

  def permit_params
    params.require(:utilization).permit(:project_id, :technology_id)
  end
  
end
