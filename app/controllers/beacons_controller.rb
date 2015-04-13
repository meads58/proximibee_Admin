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
    respond_to do |format|
      format.html {render text: "Your data was sucessfully loaded. Thanks"}
      format.json { render text: Beacon.first.to_json }
    end
    # @beacons = Beacon.first
    # render json: @beacons, :callback => params['callback']
  end


  def beacon_params
    params.require(:beacon).permit(:name, :major, :minor)
  end
end
