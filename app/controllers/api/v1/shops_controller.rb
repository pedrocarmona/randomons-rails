class Api::V1::ShopsController < Api::BaseController
  def index
    @shops = Shop.find_by_location(params[:lat], params[:lng])
    respond_with(@shops)
  end

  def show
    @shop = Shop.find(params[:id])
    respond_with(@shop)
  end
end
