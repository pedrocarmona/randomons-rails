class Api::V1::RegistrationsController < Devise::RegistrationsController
  skip_before_filter :verify_authenticity_token,
    :if => Proc.new { |c| c.request.format.json? }

  respond_to :json

  def create
    build_resource
    if resource.save
      sign_in resource
      
    else
      render :status => :unprocessable_entity,
        :json => {
          :success => false,
          :info => resource.errors,
          :data => {}
        }
    end
  end
end
