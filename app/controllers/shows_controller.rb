class ShowsController < ApplicationController

  def new
  end

  def create
    Show.create(show_params)
    flash[:notice] = "Show successfully added"
    redirect_to beacons_path
  end

  def show_params
    params.require(:show).permit(:name, :location)
  end

  def show
    @show_id = params[:id]
    @beacons = Beacon.where("show_id = '#{@show_id}'")
    render json: @beacons, :callback => params['callback'], :content_type => 'application/javascript'
  end

end
