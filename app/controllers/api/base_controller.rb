class Api::BaseController < ApplicationController
  before_filter :set_default_format_and_content_type,
   #:use_dummy_session, 
   :authenticate_user!

  respond_to :json

  protected

  def set_default_format_and_content_type
    request.format = 'json' if request.format.blank? && request.accept.blank?
    response.headers['Content-Type'] = 'application/json'
  end

  def use_dummy_session
    env['rack.session'] = {} if request.format.json?
  end
end
