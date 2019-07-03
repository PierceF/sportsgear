class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # before_action :authenticate_owner!


  include Pundit

  private
  def skip_pundit?
        devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  end
end
