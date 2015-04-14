class BeaconsController < ApplicationController

  respond_to :json

  def index
    @products = Product.all

  end

  def new
    @show = Show.find(params[:show_id])
    @beacon = Beacon.new
    @beacon_list = Beacon.all
  end

  def create
    show = Show.find(params[:show_id])
    show.beacons.create(beacon_params)
    flash[:notice] = "Beacon successfully added"
    redirect_to show_beacons_path
  end


  def show

  end

  def beacon_params
    params.require(:beacon).permit(:name, :major, :minor, :show_id)
  end

end

