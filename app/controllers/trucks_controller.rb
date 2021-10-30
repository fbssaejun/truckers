class TrucksController < ApplicationController

  def index
    @trucks = Truck.order(id :desc).all
  end

  def show
    @truck = Truck.find params[:id]
  end

  def new
    @truck = Truck.new
  end

  def create
    @truck = Truck.new(params[:truck])
  end

end
