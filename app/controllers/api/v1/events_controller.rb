class Api::V1::EventsController < Api::BaseController
  def index
    lat = params[:lat]
    lng = params[:lng]
    @populations = Population.find_by_location(lat, lng)
    @shops = Shop.find_by_location(lat, lng)
    @medical_centers = MedicalCenter.find_by_location(lat, lng)
  end
end
