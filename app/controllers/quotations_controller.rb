class QuotationsController < ApplicationController
  def index
		@quotations = Quotation.all
	end

  def create
    @mission = Mission.find(params[:mission_id])
    @quotation = Quotation.new(quotation_params)
    @mission.quotations << @quotation
    @mission.save
    redirect_to mission_path
  end

  def new 
    @mission = Mission.find(params[:mission_id])
    @quotation = Quotation.new
  end
  
  private
  def quotation_params
    params.require(:quotation).permit(:first_name, :last_name, :address)
  end
end
