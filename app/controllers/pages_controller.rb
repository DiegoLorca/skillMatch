class PagesController < ApplicationController
  before_action :authenticate_user!, only: :index
  def index
    @user = User.random(current_user.id)
  end

  def dashboard

  end
end
