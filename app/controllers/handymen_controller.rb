class HandymenController < ApplicationController
	def index
		

	end






end

#  def index
#     @restaurants = Restaurant.all
#   end

#   def show
#     @restaurant = Restaurant.find(params[:id])
#     @review = Review.new
#   end

#   def new
#     @restaurant = Restaurant.new
#   end

#   def create
#     @restaurant = Restaurant.new(restaurant_params)
#     if @restaurant.save
#       redirect_to restaurant_path(@restaurant)
#     else
#       render "new"
#     end
#   end

#   private

#   def restaurant_params
#     params.require(:restaurant).permit(:name, :address, :phone_number, :category)
#   end
# end





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
