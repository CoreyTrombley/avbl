class ProjectsController < ApplicationController
  layout 'new_feed'
  before_filter :authenticate_user!

  def index
    if params[:tag]
      @projects = Project.tagged_with(params[:tag])
    else
      @projects = Project.order("created_at desc").all
    end

    @editable_projects = current_user.projects

  end

  def show
    @project = Project.find(params[:id])
    @comments = Comment.all
  end

  def new
    @project = Project.new

  end

  def edit
    @project = Project.find(params[:id])
  end

  def create
    @project = Project.new(params[:project])
    @project.user_id = current_user.id

    respond_to do |format|
      if @project.save
        format.html { redirect_to @project, notice: 'Project was successfully created.' }
        format.json { render json: @project, status: :created, location: @project }
      else
        format.html { render action: "new" }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @project = Project.find(params[:id])

    respond_to do |format|
      if @project.update_attributes(params[:project])
        format.html { redirect_to @project, notice: 'Project was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy

    respond_to do |format|
      format.html { redirect_to projects_url }
      format.json { head :no_content }
    end
  end
end
