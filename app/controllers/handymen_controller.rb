class HandymenController < ApplicationController
	def index
		@handymen =Handyman.all
	end

	def new
		@handymen = Handyman.find(params[:handyman_id])

	end

	def show
		@quotation = Quotation.find(params[:id])
	end

	def create
		@ha

	end






end


# class ReviewsController < ApplicationController
#   def create
#     @restaurant = Restaurant.find(params[:restaurant_id])
#     @review = Review.new(review_params)
#     @review.restaurant = @restaurant
#     if @review.save
#       redirect_to restaurant_path(@restaurant)
#     else
#       render "restaurants/show"
#     end
#   end

#   private

#   def review_params
#     params.require(:review).permit(:rating, :content)
#   end
# end






#   def show
#     @reservation = Reservation.find(params[:id])
#   end

#   def create
#     @tool = Tool.find(params[:tool_id])
#     @reservation = Reservation.new(reservation_params)
#     @reservation.tool = @tool
#     @reservation.user = current_user
#     @reservation.save
#     redirect_to reservations_path
#   end

#   private

#   def reservation_params
#     params.require(:reservation).permit(:start_date, :return_date)
#   end
# end
