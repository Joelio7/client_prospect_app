class WelcomeController < ApplicationController

  def index
    @users = User.all
  end

  def dashboard
    @user = current_user
  end
end
