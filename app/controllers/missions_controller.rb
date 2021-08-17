class MissionsController < ApplicationController

	def index
		@user = current_user
		@mission_user = Mission.where(user_id: @user.id)
		if @user.handymen?
		@mission_handyman = Mission.where(handyman_id: @user.handyman.id)
		end
	end

	def new
    @mission = Mission.new
  end



	def create 
		@mission = Mission.new(mission_params)
		@mission.user = current_user
		@mission.handyman_id = Handyman.find(params[:handyman_id])

    if @mission.save!
    	redirect_to dashboard_path
    else
    	redirect_to handyman_path(@handyman)
    end
	end

	def destroy
		@mission = Mission.find(params[:id])
		@mission.delete
	end
	
private
  def mission_params
    params.require(:mission).permit( :description, :start_date, :handyman_id, :user_id, photos:[])
  end
end



    



 