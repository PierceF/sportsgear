class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # before_action :authenticate_owner!


  include Pundit

<<<<<<< HEAD
=======

>>>>>>> e4b7ac0d21bff939fd3edb6b3d7ebc1440005eff
  # after_action :verify_authorized, except: :index, unless: :skip_pundit?
  # after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?

  private
  def skip_pundit?
        devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  end
end
