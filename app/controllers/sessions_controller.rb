class SessionsController < ApplicationController
  def create
    auth = request.env["omniauth.auth"]
    session[:omniauth] = auth.except('extra')
    author = Author.sign_in_from_omniauth(auth)
    session[:author_id] = author.id
    redirect_to author_posts_path(author_id: author.id), notice: 'Successfully signed in'
  end

  def destroy
    id = session[:author_id]
    session[:author_id]  = nil
    session[:omniauth] = nil
    redirect_to :back, notice: 'Successfully signed out'
  end
end
