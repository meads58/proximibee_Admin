class BeaconsController < ApplicationController

  respond_to :json


  def index
  end

  def new
  end

  def create
    Beacon.create(beacon_params)
    flash[:notice] = "Beacon successfully added"
    redirect_to beacons_path
  end

  def show
    @beacons = Beacon.first
    render json: @beacons, :callback => params['callback'], :content_type => 'application/javascript'
  end


  def beacon_params
    params.require(:beacon).permit(:name, :major, :minor)
  end
end
