class HomeController < ApplicationController
  skip_before_action :require_login, only: [:show]
  def show
    @user = User.new
    redirect_to posts_path if logged_in?
  end
end
