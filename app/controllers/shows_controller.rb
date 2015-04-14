class ShowsController < ApplicationController

  def new
    @show = Show.new
    @show_all = Show.all
  end

  def index
    @shows = Show.all
  end

  def create
    Show.create(show_params)
    flash[:notice] = "Show successfully added"
    redirect_to shows_path
  end

  def show_params
    params.require(:show).permit(:name, :location)
  end

  def show
    @show = Show.find params[:id]
    @beacons = @show.beacons
    respond_to do |format|
      format.json do
        render json: @show, :callback => params['callback'], :content_type => 'text/json'
      end
    end
  end

   def destroy
    @show= Show.find(params[:id])
    @show.destroy
    flash[:notice] = 'Show deleted successfully'
    redirect_to shows_path
  end

  def new_beacon
   @show = Show.find params[:show_id]
   redirect_to new_show_beacon_path @show
  end

end
