# frozen_string_literal: true
require 'json'
class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    params[:account][:home_address] = JSON.parse(params[:account][:home_address]) if
      params.dig(:account, :home_address).present?

    devise_parameter_sanitizer.permit(:sign_up, keys: [:role, { home_address: [] }])
    devise_parameter_sanitizer.permit(:account_update, keys: [:role, { home_address: [] }])
  end
end
