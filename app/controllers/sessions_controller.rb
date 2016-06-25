class SessionsController < ApplicationController
  def create
    auth = request.env["omniauth.auth"]
    session[:omniauth] = auth.except('extra')
    user = User.sign_in_from_omniauth(auth)
    session[:user_id] = user.id
    redirect_to stack_path(user.id), notice: 'Successfully signed in'
  end

  def destroy
    id = session[:user_id]
    session[:user_id]  = nil
    session[:omniauth] = nil
    redirect_to stack_path(id), notice: 'Successfully signed out'
  end
end