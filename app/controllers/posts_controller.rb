class PostsController < ApplicationController
  def show
    @author = Author.find(params[:id])
    @posts = @author.posts.paginate(page: params[:page])
  end

  def create

  end
end
