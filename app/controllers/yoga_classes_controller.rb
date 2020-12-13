class YogaClassesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @classes = YogaClass.all
  end

  def show
    @yoga_class = YogaClass.find(params[:id])
    @booking = Booking.new
  end

  def new
    @yoga_class = YogaClass.new
  end

  def create
    @yoga_class = YogaClass.new(yoga_class_params)
    if @yoga_class.save
      redirect_to yoga_class_path(@yoga_class)
    else
      render :new
    end
  end

  private

  def yoga_class_params
    params.require(:yoga_class).permit(:name, :description, :price, :address, :capacity, :date, :time, :length)
  end
end
