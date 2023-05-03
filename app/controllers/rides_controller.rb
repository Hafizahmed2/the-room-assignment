class RidesController < ApplicationController
  before_action :authenticate_account!
  before_action :set_ride, only: [:show]

  def index
    @rides = Ride.all
  end

  def show
  end

  def new
    @ride = Ride.new
  end

  def create
    @ride = Ride.new(ride_params)

    if @ride.save
      redirect_to @ride, notice: t(:created)
    else
      render :new
    end
  end

  private
    def set_ride
      @ride = Ride.find(params[:id])
    end

    def ride_params
      params.require(:ride).permit(:start_address, :destination_address)
    end
end
