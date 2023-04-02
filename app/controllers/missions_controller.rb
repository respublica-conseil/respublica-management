class MissionsController < ApplicationController
  before_action :require_user_logged_in!

  def index
    @missions = Mission.all
    @consultants = Consultant.all
  end

  def new
    @mission = Mission.new
    @consultants = Consultant.all
  end

  def create
    @mission = Mission.new(mission_params)
    @mission.consultants = params[:mission][:consultants]
    if @mission.save
       flash[:notice] = "Mission ajoutée!"
      redirect_to missions_path
    else
      render :new
    end

  end

  def edit
    @mission = Mission.find(params[:id])
    @consultants = Consultant.all
  end

  def edit2
    @mission = Mission.find(params[:id])
    @consultants = Consultant.all
end

  def update
    @mission = Mission.find(params[:id])
    @mission.consultants = params[:mission][:consultants]
    if @mission.update(mission_params)
      redirect_to missions_path, notice: "Mission mise à jour!"
    else
      render :edit
    end
  end

    def update2
    @mission = Mission.find(params[:id])
    if @mission.update(months_params)
      redirect_to missions_path, notice: "Les tâches sont mises à jour!"
    else
      render :edit2
    end
  end

MONTH_NAMES = {
  1 => "Janvier",
  2 => "Fevrier",
  3 => "Mars",
  4 => "Avril",
  5 => "Mai",
  6 => "Juin",
  7 => "Juillet",
  8 => "Août",
  9 => "Septembre",
  10 => "Octobre",
  11 => "Novembre",
  12 => "Décembre"
}
  def show
  @mission = Mission.find(params[:id])
  @consultants = Consultant.all

  start_date = @mission.start_date.to_date
  end_date = @mission.end_date.to_date
end


  def destroy
    @mission = Mission.find(params[:id])
    @mission.destroy
    respond_to do |format|
      format.html { redirect_to missions_url, notice: "Mission supprimée!" }
      format.json { head :no_content }
    end
  end




  private

  def mission_params
    params.require(:mission).permit(:mission_reference,:nom, :consultant_reference , :consultants ,:mission_type,:mission_status, :start_date, :end_date,:Janvier,:Fevrier,:Mars,:Avril,:Mai,:Juin,:Juillet,:Août,:Septembre,:Octobre,:Novembre,:Decembre)
  end

  private
  def months_params
    params.require(:mission).permit(:Mars,:Avril,:Mai)
  end
end

