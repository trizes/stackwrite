class PostsController < ApplicationController
  def index
    @author = Author.find(params[:author_id])
    @posts = @author.posts.paginate(page: params[:page])
  end

  def create

  end
end
