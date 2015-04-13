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
    @shows = Show.all
    render json: @shows, :callback => params['callback'], :content_type => 'application/javascript'
  end

end
