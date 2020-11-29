class HomepageController < ApplicationController
  def index
  end

  def alluser
    authorize! :read, current_user
    @users = User.all
  end
end
