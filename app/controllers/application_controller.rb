class ApplicationController < ActionController::Base
  rescue_from 'not_authorized', with: :user_not_authorized

  protect_from_forgery with: :exception
  include SessionsHelper

  private
  	def user_not_authorized
      flash[:error] = "You don't have access to this section."
      redirect_to :back
    end
end