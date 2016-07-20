class HotelsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
      @hotel = Hotel.new
  end

  # def new
  #   @hotel = Hotel.new
  # end
  #
  # def create
  #     @hotel = Hotel.new(new_hotel_params)
  #     @hotel.user = current_user
  #     hotel_valid?(@hotel)
  # end
  #
  # def edit
  #   @hotel = Hotel.find(params[:id])
  # end
  #
  # def update
  #   @hotel = Hotel.find(params[:id])
  #
  #   if @hotel.update_attributes(new_hotel_params)
  #     flash[:notice] = "Hotel successfully updated"
  #     redirect_to hotel_path(@hotel)
  #   else
  #     render :edit
  #   end
  # end
  #
  # def show
  #   @hotel = Hotel.find(params[:id])
  # end
  #
  # def destroy
  #   @hotel = Hotel.find(params[:id])
  #   @hotel.destroy
  #   redirect_to root_path
  # end
  #
  # protected
  #
  # def new_hotel_params
  #   params.require(:hotel).permit(
  #     :name,
  #     :image,
  #     :description,
  #   )
  # end
  #
  # def hotel_valid?(hotel)
  #   if hotel.save
  #     redirect_to hotel_path(hotel),
  #     notice: "You have successfully added a new hotel!"
  #   else
  #     render :new
  #   end
  # end
end
