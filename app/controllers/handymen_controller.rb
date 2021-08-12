class HandymenController < ApplicationController
	
	def index
		@handymen = Handyman.all
		
	end

	def new
		@handymen = Handyman.new
		@missions = Mission.new
	end

	def show
		@handyman = Handyman.find(params[:id])
	  @quotations = Quotation.new
	end

	def create
		@handymen = Handyman.new(handyman_params)
		if @handyman.save
			redirect_to handyman_path(@handyman)
		else
			render "new"
		end
	end

	def destroy
		@handymen = Handyman.delete
	end



private
def handyman_params
    params.require(:handyman).permit(:user_id, :average_price, :job_title, :availability)
end

end

