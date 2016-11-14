class ApplicationController < ActionController::Base
  # For APIs, we need to use :null_session
  protect_from_forgery with: :null_session
end
