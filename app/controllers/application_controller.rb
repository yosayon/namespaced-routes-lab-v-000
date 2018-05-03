class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :set_preferences!, only: [:index, :new]
  
private
  
 def set_preferences!
  @preferences = Preference.first
 end
 
end
