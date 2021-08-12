class QuotationsController < ApplicationController
  def create
    @quotations = Quotation.find(params[:quotation_id])
    @mission = Mission.new(mission_params)
    @mission.quotation = @quotation
    @mission.save
    redirect_to mission_path
  end
end
