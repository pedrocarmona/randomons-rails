class Api::V1::PopulationsController < Api::BaseController
  def index
    @populations = Population.order('name ASC')
  end

  def show
    @population = Population.find(params[:id])
  end
end
