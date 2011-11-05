class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :get_location
  before_filter :authenticate_user!
  
  def get_location  
    @locations = Location.all
  end
end
