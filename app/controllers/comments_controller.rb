class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(params_comments)

    # send email when comment is writen
    CommentMailer.comment_created(current_user, @post.user, @post.title).deliver

    redirect_to post_path(@post)
  end

  private
    def params_comments
      params.require(:comment).permit(:content)
    end
end