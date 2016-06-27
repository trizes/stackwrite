class PostsController < ApplicationController
  def index
    @author = Author.find(params[:author_id])
    @posts = @author.posts.paginate(page: params[:page])
  end

  def create
    @post = current_author.posts.build(post_params)
    if @post.save
      flash[:success] = "Post created."
      redirect_to root_url
    else
      render root_url
    end
  end

  private

  def post_params
    params.require(:post).permit(:body)
  end
end
