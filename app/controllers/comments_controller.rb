class CommentsController < ApplicationController
  def create
    @comment = current_author.comments.build(comment_params)
    @comment.post_id = params[:post_id]
    if @comment.save
      flash[:success] = "Comment posted."
      redirect_to author_posts_path
    else
      render root_url
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end
end