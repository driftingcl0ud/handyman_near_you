class HandymenController < ApplicationController
	
	def index
		@handymen = Handyman.all
	end

	def new
		@handymen = Handyman.new
	end

	def show
		@handymen = Handyman.find(params[:id])
		@quotation = Quotation.new

	end

	def create
		@handymen = Handyman.new(handyman_params)
		if @handyman.save
			redirect_to handyman_path(@handyman)
		else
			render "new"
		end
	end

private





end

