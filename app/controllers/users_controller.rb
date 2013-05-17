class UsersController < ApplicationController
  layout 'new_feed'
  def index
    @users = User.text_search(params[:query]).page(params[:page]).per(10)

    respond_to do |format|
      format.html # index.html.haml
      format.xml  { render :xml => @users }
    end
  end
  def show
    @user = User.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @user }
    end
  end
end
