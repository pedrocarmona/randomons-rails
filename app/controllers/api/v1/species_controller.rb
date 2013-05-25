class Api::V1::SpeciesController < Api::BaseController
  def index
    @species = Specie.order('name ASC')
  end

  def show
    @specie = Specie.find(params[:id])
  end
end
