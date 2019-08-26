class UserProfilesController < ApplicationController
  def new
    render layout: 'application-off-header-footer.haml'
  end

  def create
  end

  def edit
    @user = User.find(params[:user_id])
  end

  def update
    @user = User.find(params[:user_id])
    @user.update(user_session)
    redirect_back(fallback_location: root_path)
  end
end
