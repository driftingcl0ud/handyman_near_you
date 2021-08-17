class QuotationsController < ApplicationController
  def index
		@quotations = Quotation.all
	end

  def create 
    @mission = Mission.find(params[:mission_id])
    @quotation = Quotation.new(quotation_params)
    @mission.quotations << @quotation
    @mission.save
    redirect_to mission_path(@mission)
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
    params.require(:quotation).permit(:specific_price, :handyman_description)
  end
end
