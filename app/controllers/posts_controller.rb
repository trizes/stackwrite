class PostsController < ApplicationController
  def index
    @author = Author.find(params[:author_id])
    @posts = @author.posts.paginate(page: params[:page])
    @new_post = @author.posts.build

    respond_to do |format|
      format.html
      format.json { render :json => @posts }
    end
  end

  def create
    @post = current_author.posts.build(post_params)
    if @post.save
      flash[:success] = "Post created."
      redirect_to author_posts_path
    else
      render root_url
    end
  end

  private

  def post_params
    params.require(:post).permit(:body)
  end
end
