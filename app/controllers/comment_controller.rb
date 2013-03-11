class CommentController < ApplicationController
  def new
    @comment = Comment.new
  end
  def create
    @comment = Comment.new(params[:comment])
    @comment.user_id = current_user.id
  end
end