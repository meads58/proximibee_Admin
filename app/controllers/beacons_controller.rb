class BeaconsController < ApplicationController
  def index
  end

  def new
  end

  def create
    Beacon.create(beacon_params)
    flash[:notice] = "Beacon successfully added"
    redirect_to beacons_path
  end

  def beacon_params
    params.require(:beacon).permit(:name, :major, :minor)
  end
end
