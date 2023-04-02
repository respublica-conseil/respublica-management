class HomeController < ApplicationController
  before_action :require_user_logged_in!

  def index
    @consultants = Consultant.all
    @missions = Mission.all
  end

   def show
    @consultant = Consultant.find(params[:id])
    @mission = Mission.find(params[:id])
  end
end


