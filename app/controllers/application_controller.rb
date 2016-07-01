class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :current_author

  private
  def current_author
    @current_author ||= Author.find(session[:author_id]) if session[:author_id]
    rescue ActiveRecord::RecordNotFound
      session[:author_id]  = nil
      session[:omniauth] = nil
      redirect_to root_url, notice: 'Your account was not found, please login again.'
  end
end
