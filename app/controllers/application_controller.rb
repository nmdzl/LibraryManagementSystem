class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
  before_action :verify_login

  def verify_login
    if !logged_in?
      redirect_to login_path
    end
  end
end
