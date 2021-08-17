class HandymenController < ApplicationController
	
	def index
		if params[:query].present?
			sql_query = "job_title ILIKE :query"
			@handymen = Handyman.where(sql_query, query: "%#{params[:query]}%")
		else
			@handymen = Handyman.all
		end
		@markers = @handymen.geocoded.map do |handyman|
      {
        lat: handyman.latitude,
        lng: handyman.longitude,
        info_window: render_to_string(partial: "info_window", locals: { handyman: handyman })
      }
    end

	end

	def new
	  @handyman = Handyman.new
	  @missions = Mission.new
	end

	def show
	  @handyman = Handyman.find(params[:id])
	  @quotations = Quotation.new
	end

	def create
		@handyman = Handyman.new(handyman_params)
		@handyman.user = current_user
		if @handyman.save!
			redirect_to dashboard_handyman_path
		else
			render "new"
		end
	end

	def destroy
		@handymen = Handyman.delete
	end



private
def handyman_params
    params.require(:handyman).permit(:user_id, :average_price, :job_title, :availability, :address, photos:[])
end

end

