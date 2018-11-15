class PagesController < ApplicationController
  before_action :authenticate_user!, only: :dashboard
  def index
    if current_user.completed_profile?
      redirect_to pages_dashboard_path
    else
      redirect_to edit_user_registration_path
    end
  end

  def dashboard

  end
end
