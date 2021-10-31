class TrucksController < ApplicationController

  def index
    @trucks = Truck.all
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

  def is_reserved?
    truck.reserved == true
  end
  helper_method :is_admin?


end
