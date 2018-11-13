class PagesController < ApplicationController
  before_action :authenticate_user!
  def index
    # if current_user.completed_profile?
    #   redirect_to root_path
    # else
    #   redirect_to edit_user_registration_path
    # end
  end

  def dashboard

  end
end
