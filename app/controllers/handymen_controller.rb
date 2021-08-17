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
	  @handymen = Handyman.new
	  @missions = Mission.new
	end

	def show
	  @handymen = Handyman.find(params[:id])
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

