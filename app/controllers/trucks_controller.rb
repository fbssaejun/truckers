class TrucksController < ApplicationController

  def index
    @trucks = Truck.all
  end

  def show
    @truck = Truck.find(params[:id])
  end

  def reserve
    @truck = Truck.find(params[:id])
    @truck.reserved = true
    @truck.save
    redirect_to '/trucks'
  end

  
  def create
    @truck = Truck.new(params[:truck])
  end

  def edit
    @truck = Truck.find(params[:id])
  end

  def update
    @truck = Truck.find(params[:id])
    @truck.update(truck_params)

    redirect_to '/trucks'
  end


  def destroy
    @truck = Truck.find(params[:id])
    @truck.destroy

    redirect_to '/trucks'
  end


  #Helper method for checking if truck is reserved
  def is_reserved?
    truck.reserved == true
  end
  helper_method :is_admin?

  def truck_params
    params.require(:truck).permit(:name, :vehicle_type, :year, :capacity)
  end

end
