class Api::V1::PopulationsController < Api::BaseController
  def index
    @populations = Population.find_by_location(params[:lat], params[:lng])
    respond_with(@populations)
  end

  def show
    @population = Population.find(params[:id])
    respond_with(@population)
  end
end
