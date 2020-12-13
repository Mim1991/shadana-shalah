class YogaClassesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @classes = YogaClass.all
  end

  def show
    @yoga_class = YogaClass.find(params[:id])
    @booking = Booking.new
  end
end
