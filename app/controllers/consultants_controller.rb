class ConsultantsController < ApplicationController
  before_action :require_user_logged_in!

  def index
    @consultants = Consultant.all
  end

   def show
    @consultant = Consultant.find(params[:id])

    @charge = Charge.find(params[:id])

  end

  def new
    @consultant = Consultant.new
  end

  def create
    @consultant = Consultant.new(consultant_params)
    if @consultant.save
      redirect_to consultants_path, notice: "Consultant ajouté!"
    else
      render :new
    end
  end


  def destroy
      @consultant = Consultant.find(params[:id])
      @consultant.destroy
      redirect_to consultants_path, notice: "Consultant supprimé!"
  end

def edit_charges
  @consultant = Consultant.find(params[:id])
  @missions = Mission.where("consultants LIKE ?", "%#{@consultant.full_name}%")
end

def update_charges
  @charge = Charge.find(params[:id])
  if @charge.update(charge_params)
    redirect_to request.referrer, notice: "Charge modifiée!"
  end
end

  private

  def consultant_params
    params.require(:consultant).permit(:first_name, :last_name, :email, :full_name,:num_missions_ref,:missions_count)
  end

  def charge_params
  params.require(:charge).permit(:consultant_full_name,:mission_reference,:march_charge, :april_charge, :may_charge)
end

  end
