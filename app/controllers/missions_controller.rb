class MissionsController < ApplicationController

	def index
		@user = current_user
		@mission_user = Mission.where(user_id: @user.id)
		if @user.handymen.?
		@mission_handyman = Mission.where(handyman_id: @user.handyman.id)
		end
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

	def destroy
		@mission = Mission.find(params[:id])
		@mission.delete
	end
	
private
  def mission_params
    params.require(:mission).permit( :description, :start_date)
  end
end



    



 