class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end
  def create
    @project = Project.find(params[:project_id])
    @comment = @project.comments.create(:comment => params[:comment][:comment], :user_id => current_user.id)
    redirect_to project_path(@project)
  end
end
