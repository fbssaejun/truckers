class TrucksController < ApplicationController

  def show
    @truck = Truck.find params[:id]
  end

end
