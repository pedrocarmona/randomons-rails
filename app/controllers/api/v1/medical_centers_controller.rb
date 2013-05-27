class Api::V1::MedicalCentersController < Api::BaseController
  def index
    @medical_centers = MedicalCenter.find_by_location(params[:lat], params[:lng])
    respond_with(@medical_centers)
  end

  def show
    @medical_center = MedicalCenter.find(params[:id])
    respond_with(@medical_center)
  end
end
