class QuotationsController < ApplicationController
  def index
		@quotations = Quotation.all
	end

  def create 
    @mission = Mission.find(params[:mission_id])
    @quotation = Quotation.new(quotation_params)
    @quotation.mission = @mission
    @quotation.handyman_id = current_user.handymen[0].id
    @quotation.save!
    @mission.quotations << @quotation
    @mission.save!
    redirect_to dashboard_handyman_path
  end

  def new 
    @mission = Mission.find(params[:mission_id])
    @quotation = Quotation.new
  end

  def destroy
    @quotation = Quotation.find(params[:id])
    @quotation.delete
  end

  def approve
    @quotation = Quotation.find(params[:id])
  end
  private
  def quotation_params
    params.require(:quotation).permit(:specific_price, :handyman_description, :mission_id, :handyman_id, :status)
  end
end
