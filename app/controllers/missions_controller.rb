class MissionsController < ApplicationController

	def index
		@missions = Mission.all
	end

	def new
    @mission = Mission.new
  end


	def create 
		@mission = Mission.new(mission_params)
    if @mission.save!
    	redirect_to dashboad_path
    else
    	render "new"
    end
	end


	

private
  def mission_params
    params.require(:mission).permit( :description, :start_date)
  end
end



    



 