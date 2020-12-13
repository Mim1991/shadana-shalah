class BookingsController < ApplicationController
  def create
    @booking = Booking.new
    @yoga_class = YogaClass.find(params[:yoga_class_id])
    @booking.user = current_user
    @booking.yoga_class = @yoga_class
    if @booking.save
      redirect_to yoga_class_path(@yoga_class)
    else
      render :new
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to root_path
  end
end
