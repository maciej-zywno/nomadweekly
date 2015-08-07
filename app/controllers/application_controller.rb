require 'mailchimp'

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :setup_mcapi

  def setup_mcapi
     @mc = Mailchimp::API.new(Figaro.env.mailchimp_api_key + '-us8')
  end


  decent_configuration do
    strategy DecentExposure::StrongParametersStrategy
  end
  expose(:issues) { Issue.order('created_at DESC') }
end
