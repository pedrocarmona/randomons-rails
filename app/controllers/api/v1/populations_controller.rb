class Api::V1::PopulationsController < Api::BaseController
  def index
    @populations = Population.all
    respond_with(@populations)
  end

  def show
    @population = Population.find(params[:id])
    respond_with(@population)
  end
end
