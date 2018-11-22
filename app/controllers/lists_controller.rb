class ListsController < ApplicationController
  before_action :authenticate_user!
  def create
    List.create(user_id: current_user.id, skill_id: params[:skill_id])
    redirect_to pages_dashboard_path, notice: 'Se ha ingresado una nueva habilidad!'
  end
end
