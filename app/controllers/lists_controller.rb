class ListsController < ApplicationController
  before_action :authenticate_user!
  def create
    # List.create(user_id: current_user.id, skill_id: params[:skill_id])
    # redirect_to pages_dashboard_path, notice: 'Se ha ingresado una nueva habilidad!'
    @skill = Skill.find(params[:skill_id])
    @list = List.new(skill: @skill, user: current_user)
    if @list.save
      redirect_to skills_path, notice: 'La habilidad ha sido registrada'
    else
      redirect_to skills_path, notice: 'La habilidad no se ha podido registrar'
    end
  end

  # def destroy
  #   @list = List.find(params[:id])
  #   @list.destroy
  #   redirect_to skills_path
  # end
  #
  # private
  # def list_params
  #   params.require(:list).permit(:kind, :user_id)
  # end
end
