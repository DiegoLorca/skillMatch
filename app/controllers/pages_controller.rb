class PagesController < ApplicationController
  before_action :authenticate_user!, only: :index
  def index
    @users = User.all
  end

  def dashboard

  end
end
