class HomepageController < ApplicationController
  def index
  end

  def alluser
    @users = User.all
  end
end
