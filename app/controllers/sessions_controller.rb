class SessionsController < ApplicationController
  def create
    auth = request.env["omniauth.auth"]
    session[:omniauth] = auth.except('extra')
    author = Author.sign_in_from_omniauth(auth)
    session[:author_id] = author.id
    redirect_to stack_path(author.id), notice: 'Successfully signed in'
  end

  def destroy
    id = session[:author_id]
    session[:author_id]  = nil
    session[:omniauth] = nil
    redirect_to stack_path(id), notice: 'Successfully signed out'
  end
end
