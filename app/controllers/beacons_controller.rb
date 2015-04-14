class BeaconsController < ApplicationController

  respond_to :json

  def index
  end

  def new
    @show = Show.find(params[:show_id])
    @beacon = Beacon.new
  end

  def create
    Beacon.create(beacon_params)
    flash[:notice] = "Beacon successfully added"
    redirect_to show_beacons_path
  end

  def show
    @beacons = Beacon.where("show_id = '2'")
    render json: @beacons, :callback => params['callback'], :content_type => 'application/javascript'
  end

  def beacon_params
    params.require(:beacon).permit(:name, :major, :minor, :show_id)
  end

end

