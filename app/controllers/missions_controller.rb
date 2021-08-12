class MissionsController < ApplicationController

	def index
		@missions = Mission.all
	end

	def new
    @missions = Mission.new
    @quotations = Quotation.new
  end


	def create 
		@mission = Mission.new(mission)
    if @mission.save
    	redirect_to @mission
    else
    	render "new"
    end
	end


	def  
		
	end

private
  def mission_params
    params.require(:mission).permit(:first_name, :last_name, :address)
  end
end



    
end


 